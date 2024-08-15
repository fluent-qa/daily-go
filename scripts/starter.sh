PROJECT_NAME=$1
go mod init ${PROJECT_NAME}
cd ${PROJECT_NAME}
go mod tidy
mkdir -p cmd api docs
# An internal directory showcases to anyone looking at your service that this code is private.
# External services should not import any packages within this directory.
mkdir -p pkg #external
mkdir -p internal # internal
mkdir -p config
mkdir -p vendor
#touch Dockerfile
#touch Makefile_tpl
touch main.go
cp ../scripts/Makefile_tpl Makefile
cp ../scripts/.testcoverage.yml .testcoverage.yml