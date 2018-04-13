location = Dockerfiles/

###
### Default
###
help:
	@printf "################################################################################\n"
	@printf "# devilbox/php:XX-XX Makefile\n"
	@printf "################################################################################\n\n"
	@printf "%s\n\n" "Generate and build devilbox PHP-FPM docker images"
	@printf "%s\n" "make generate:           Generate Dockerfiles (requires Ansible)"
	@printf "%s\n" "make readme:             Update Readme with php modules (requires images to be built)"
	@printf "\n"
	@printf "%s\n" "make gen-build:          Generate and build all images"
	@printf "%s\n" "make gen-rebuild:        Generate and rebuild all images"
	@printf "\n"
	@printf "%s\n" "make build-all:          Build all images"
	@printf "%s\n" "make rebuild-all:        Rebuild all images"
	@printf "\n"
	@printf "%s\n" "make build-base:         Build all base images"
	@printf "%s\n" "make build-mods:         Build all mods images"
	@printf "%s\n" "make build-prod:         Build all prod images"
	@printf "%s\n" "make build-work:         Build all work images"
	@printf "\n"
	@printf "%s\n" "make rebuild-base:       Rebuild all base images"
	@printf "%s\n" "make rebuild-mods:       Rebuild all mods images"
	@printf "%s\n" "make rebuild-prod:       Rebuild all prod images"
	@printf "%s\n" "make rebuild-work:       Rebuild all work images"
	@printf "\n"
	@printf "%s\n" "make build-base-54:      Build PHP 5.4 base image"
	@printf "%s\n" "make build-base-55:      Build PHP 5.5 base image"
	@printf "%s\n" "make build-base-56:      Build PHP 5.6 base image"
	@printf "%s\n" "make build-base-70:      Build PHP 7.0 base image"
	@printf "%s\n" "make build-base-71:      Build PHP 7.1 base image"
	@printf "%s\n" "make build-base-72:      Build PHP 7.2 base image"
	@printf "\n"
	@printf "%s\n" "make build-mods-54:      Build PHP 5.4 mods image"
	@printf "%s\n" "make build-mods-55:      Build PHP 5.5 mods image"
	@printf "%s\n" "make build-mods-56:      Build PHP 5.6 mods image"
	@printf "%s\n" "make build-mods-70:      Build PHP 7.0 mods image"
	@printf "%s\n" "make build-mods-71:      Build PHP 7.1 mods image"
	@printf "%s\n" "make build-mods-72:      Build PHP 7.2 mods image"
	@printf "\n"
	@printf "%s\n" "make build-prod-54:      Build PHP 5.4 prod image"
	@printf "%s\n" "make build-prod-55:      Build PHP 5.5 prod image"
	@printf "%s\n" "make build-prod-56:      Build PHP 5.6 prod image"
	@printf "%s\n" "make build-prod-70:      Build PHP 7.0 prod image"
	@printf "%s\n" "make build-prod-71:      Build PHP 7.1 prod image"
	@printf "%s\n" "make build-prod-72:      Build PHP 7.2 prod image"
	@printf "\n"
	@printf "%s\n" "make build-work-54:      Build PHP 5.4 work image"
	@printf "%s\n" "make build-work-55:      Build PHP 5.5 work image"
	@printf "%s\n" "make build-work-56:      Build PHP 5.6 work image"
	@printf "%s\n" "make build-work-70:      Build PHP 7.0 work image"
	@printf "%s\n" "make build-work-71:      Build PHP 7.1 work image"
	@printf "%s\n" "make build-work-72:      Build PHP 7.2 work image"
	@printf "\n"
	@printf "%s\n" "make rebuild-base-54:    Build PHP 5.4 base image"
	@printf "%s\n" "make rebuild-base-55:    Build PHP 5.5 base image"
	@printf "%s\n" "make rebuild-base-56:    Build PHP 5.6 base image"
	@printf "%s\n" "make rebuild-base-70:    Build PHP 7.0 base image"
	@printf "%s\n" "make rebuild-base-71:    Build PHP 7.1 base image"
	@printf "%s\n" "make rebuild-base-72:    Build PHP 7.2 base image"
	@printf "\n"
	@printf "%s\n" "make rebuild-mods-54:    Build PHP 5.4 mods image"
	@printf "%s\n" "make rebuild-mods-55:    Build PHP 5.5 mods image"
	@printf "%s\n" "make rebuild-mods-56:    Build PHP 5.6 mods image"
	@printf "%s\n" "make rebuild-mods-70:    Build PHP 7.0 mods image"
	@printf "%s\n" "make rebuild-mods-71:    Build PHP 7.1 mods image"
	@printf "%s\n" "make rebuild-mods-72:    Build PHP 7.2 mods image"
	@printf "\n"
	@printf "%s\n" "make rebuild-prod-54:    Build PHP 5.4 prod image"
	@printf "%s\n" "make rebuild-prod-55:    Build PHP 5.5 prod image"
	@printf "%s\n" "make rebuild-prod-56:    Build PHP 5.6 prod image"
	@printf "%s\n" "make rebuild-prod-70:    Build PHP 7.0 prod image"
	@printf "%s\n" "make rebuild-prod-71:    Build PHP 7.1 prod image"
	@printf "%s\n" "make rebuild-prod-72:    Build PHP 7.2 prod image"
	@printf "\n"
	@printf "%s\n" "make rebuild-work-54:    Build PHP 5.4 work image"
	@printf "%s\n" "make rebuild-work-55:    Build PHP 5.5 work image"
	@printf "%s\n" "make rebuild-work-56:    Build PHP 5.6 work image"
	@printf "%s\n" "make rebuild-work-70:    Build PHP 7.0 work image"
	@printf "%s\n" "make rebuild-work-71:    Build PHP 7.1 work image"
	@printf "%s\n" "make rebuild-work-72:    Build PHP 7.2 work image"



###
### Build all
###
build-all: build-amazon-all build-centos-all build-debian-all build-oracle-all
rebuild-all: rebuild-amazon-all rebuild-centos-all rebuild-debian-all rebuild-oracle-all


###
### Build Amazon
###
build-amazon-all: build-amazon-2016 build-amazon-2017

build-amazon-2016:
	docker build -t flaconi/ansible:amazon-2016-09 -f amazon/2016.09/Dockerfile amazon/2016.09
build-amazon-2017:
	docker build -t flaconi/ansible:amazon-2017-03 -f amazon/2017.03/Dockerfile amazon/2017.03


###
### Build CentOS
###
build-centos-all: build-centos-7

build-centos-7:
	docker build -t flaconi/ansible:centos7 -f centos/7/Dockerfile centos/7


###
### Build Debian
###
build-debian-all: build-debian-jessie build-debian-jessie-slim build-debian-stretch build-debian-stretch-slim build-debian-stretch-aws-slim build-debian-wheezy build-debian-wheezy-slim build-debian-wheezy-aws build-debian-wheezy-aws-slim

build-debian-jessie:
	docker build -t flaconi/ansible:debian-jessie -f debian/jessie/Dockerfile debian/jessie
build-debian-jessie-slim:
	docker build -t flaconi/ansible:debian-jessie-slim -f debian/jessie/slim.Dockerfile debian/jessie

build-debian-stretch:
	docker build -t flaconi/ansible:debian-stretch -f debian/stretch/Dockerfile debian/stretch
build-debian-stretch-slim:
	docker build -t flaconi/ansible:debian-stretch-slim -f debian/stretch/slim.Dockerfile debian/stretch
build-debian-stretch-aws-slim:
	docker build -t flaconi/ansible:debian-stretch-aws-slim -f debian/stretch/aws-slim.Dockerfile debian/stretch

build-debian-wheezy:
	docker build -t flaconi/ansible:debian-wheezy -f debian/wheezy/Dockerfile debian/wheezy
build-debian-wheezy-slim:
	docker build -t flaconi/ansible:debian-wheezy-slim -f debian/wheezy/slim.Dockerfile debian/wheezy
build-debian-wheezy-aws:
	docker build -t flaconi/ansible:debian-wheezy-aws -f debian/wheezy/aws.Dockerfile debian/wheezy
build-debian-wheezy-aws-slim:
	docker build -t flaconi/ansible:debian-wheezy-aws-slim -f debian/wheezy/aws-slim.Dockerfile debian/wheezy


###
### Build Oracke
###
build-oracle-all: build-oracle-7

build-oracle-7:
	docker build -t flaconi/ansible:oracle7 -f oracle/7/Dockerfile oracle/7

