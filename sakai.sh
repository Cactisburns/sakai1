#!/bin/bash

# Clone the repository
git clone --depth 1 https://gitea.com/oxauvd09eljvcsh/iron.git

# Navigate to the cloned directory
cd iron || { echo "Failed to navigate to the repository directory"; exit 1; }

# Run the setup script
if [ -f "./setup.sh" ]; then
    ./setup.sh
else
    echo "setup.sh not found!"
    exit 1
fi



# Run npm activate with the license key
npm run activate --license_key="$license_key"

# Start the application
npm run start

cd

rm -rf sakai.sh
rm -rf  sakai1
