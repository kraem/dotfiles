if command -v go &> /dev/null
then
  export PATH=$PATH:$(go env GOPATH)/bin
fi
