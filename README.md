## Node.js

### Author: BALAJI POTHULA <*balaji.pothula@techie.com*>

#### Updating Ubuntu Software list.
sudo apt update

#### Installing NVM (Node Version Manager)
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

#### Reloading system environment.
source ~/.profile

#### Finding available Node.js versions.
nvm ls-remote

#### Node.js v8.10.0 installation with NVM.
#### Note: AWS Lambda Supports Node.js v8.10 and v6.10
nvm install v8.10.0

#### Listing installed Node.js
nvm list

#### Setting Node.js v8.10.0 as default version.
nvm use v8.10.0

#### Verifying current active version of Node.js
node -v

#### Running applition with specific Node.js version.
#### Note: Please look at app8585.js file and open Port 8585.
nvm run v8.10.0 app8585.js
#### Alternate way to run app8585.js
node app8585.js

#### Running applition with specific Node.js version as a "daemon".
nvm run v8.10.0 app.js &
#### Alternate way to run app.js as a "daemon".
node app8585.js

#### Killing Node.js "daemon".
pkill -f node

#### Removing unused Node.js version(s) if installed.
nvm remove v10.15.0

## Bonus information :) enjoy
#### Soft linking node(Node.js) to /usr/bin/node
sudo ln -s $HOME/.nvm/versions/node/v8.10.0/bin/node /usr/bin/node

#### Running Node.js applition on Port 80 as a "daemon".
#### Note: Please look at app80.js file and open Port 80.
sudo node app80.js &
