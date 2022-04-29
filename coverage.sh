make clean
./bootstrap.sh
./configure
make check
lcov --directory . --capture --output-file quagga.info
mkdir cov-report
genhtml -o ./cov-report quagga.info
