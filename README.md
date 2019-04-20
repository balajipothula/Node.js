# Node.js

# Author: BALAJI POTHULA balaji.pothula@techie.com

# Installing NVM (Node Version Manager)
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Reloading system environment.
source ~/.profile

# Finding available Node.js version
nvm ls-remote

# Node.js installation with NVM.
nvm install v8.10.0

# Listing installed Node.js
nvm list

# Setting v8.10.0 as default Node.js version.
nvm use v8.10.0

# Verifying current active version of Node.js
node -v

# Running applition with specific Node.js version.
nvm run v8.10.0 app.js

# Removing unused Node.js version(s) if installed.
nvm remove v10.15.0
