all: install

install:
	os=$(shell cat /etc/os-release | grep -oP '^ID=\K(\w+)')
# Install Node.js and Yarn
ifeq ($(os),$(filter $(os),ubuntu debian))
	curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
	sudo apt-get install -y nodejs
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
	sudo apt-get update && sudo apt-get install yarn
endif
ifeq ($(os),fedora)
	sudo dnf install -y nodejs
	sudo curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
	sudo dnf install -y yarn
endif

# Install the Backstage CLI
	yarn global add @backstage/cli
	yarn global add concurrently