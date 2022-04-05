{ stdenv, lib, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "c-lolcat";
  src = fetchFromGitHub {
    owner = "jaseg";
    repo = "lolcat";
    rev = "8173ed8cb62f22ca2ebb33a63b5b9954afb20d7e";
    sha256 = "0iijwszfgcskxqzzcj24f7bvmkf1rb7pc7sa59f6vkiba7j7wpw4";
  };

  installPhase = ''
    mkdir --parents "$out/bin"
    cp ./lolcat "$out/bin"
  '';

  meta = with lib; {
    description = "High-performance implementation of https://github.com/busyloop/lolcat";
    homepage = "https://github.com/jaseg/lolcat";
    licenses = licenses.wtfpl;
    platforms = platforms.linux;
  };
  
}
