all: install

install:
	# Install Node.js
	sudo dnf install -y nodejs

	# Install Yarn
	sudo curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
	sudo dnf install -y yarn

	# Install the Backstage CLI
	yarn global add @backstage/cli
