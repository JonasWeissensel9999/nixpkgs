{ lib, buildGoModule, fetchFromGitHub }:
buildGoModule rec {
  pname = "swamp";
  version = "0.14.0";
  src = builtins.fetchGit {
    url = "https://github.com/otto-ec/seo_swamp";
    rev = "a20b6e68d20f39680282bbd428ba5207e27dffda";
    ref = "main";
  };
  vendorSha256 = "+fmNBhoAkjxPMRyGSZq+xEN5HxBfkqFE7Y42bWtum/4=";
  doCheck = false;

  meta = with lib; {
    description = "AWS Profile sourcing";
    homepage = "https://github.com/otto-ec/seo_swamp";
    license = licenses.mit;
  };

}
