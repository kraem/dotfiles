# https://discourse.nixos.org/t/can-i-inspect-the-installed-versions-of-system-packages/2763/17
alias nix-curpackages="nix-instantiate --strict --json --eval -E 'builtins.map (p: p.name) (import <nixpkgs/nixos> {}).config.environment.systemPackages' | nix run nixpkgs.jq -c jq -r '.[]' | sort -u"
alias nix-curpackagesv2="find /run/current-system/sw/bin/ -type l -exec readlink {} \; | sed -E 's|[^-]+-([^/]+)/.*|\1|g' | sort -u"
function nix-why-depends() {
  nix why-depends /run/current-system $(realpath $(which $1))
}
