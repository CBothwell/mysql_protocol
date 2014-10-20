OPAM_DEPENDS="ocamlfind ounit cryptokit bitstring"
	 
case "$OCAML_VERSION,$OPAM_VERSION" in
4.02.1,1.1.0) ppa=avsm/ocaml42+opam11 ;;
*) echo Unknown $OCAML_VERSION,$OPAM_VERSION; exit 1 ;;
esac

git config --global user.email "slegrand45@gmail.com"
git config --global user.name "Stéphane Legrand"
echo "yes" | sudo add-apt-repository ppa:$ppa
sudo apt-get update -qq
sudo apt-get install -qq ocaml ocaml-native-compilers camlp4-extra opam time
export OPAMYES=1
echo OCaml version
ocaml -version
echo OPAM versions
opam --version
opam --git-version
opam init 
opam install ${OPAM_DEPENDS}
eval `opam config env`
make


