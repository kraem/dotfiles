if type "zfs" > /dev/null; then
  function zfs-listspace() {
    ZPOOLS=$(zpool list -H | cut -f1 )
    echo $ZPOOLS | while read line ; do
       zfs list -o space -r $line
    done
  }

  # TODO cleanup
  function zfs-purge-dataset-snapshot() {
    zfs-listspace
    read "REPLY?Are you sure you want to purge ALL of tank/$1's snapshots? (Y/y)"
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      zfs list -t snapshot -o name -S creation | grep "^tank/$1"  | xargs -n 1 sudo zfs destroy -vr
    fi
  }
fi
