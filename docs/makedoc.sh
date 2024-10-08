python3 ../code/saaga.py basefile=saaga dochtml newlog

echo '#' $(python3 ../code/saaga.py --description) > ../SAAGA.md
echo >> ../SAAGA.md

echo '```' >> ../SAAGA.md
python3 ../code/saaga.py --details >> ../SAAGA.md
echo '```' >> ../SAAGA.md
echo >> ../SAAGA.md
echo 'For a better rendering and navigation of this document, please download and open [`./docs/saaga.docs.html`](./docs/saaga.docs.html), or visit <https://slimsuite.github.io/saaga/>.' >> ../SAAGA.md
echo 'Documentation can also be generated by running SAAGA with the `dochtml=T` option. (R and pandoc must be installed - see below.)' >> ../SAAGA.md
echo >> ../SAAGA.md
echo '## Introduction' >> ../SAAGA.md
echo >> ../SAAGA.md
grep -A 10000 saaga saaga.docs.Rmd >> ../SAAGA.md

cp saaga.docs.html ../index.html
