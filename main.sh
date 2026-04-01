# Install dependencies
apt update
apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

# Fetch and compile xmrig
git clone https://github.com/xmrig/xmrig.git
cd xmrig

mkdir build && cd build
cmake ..
make -j$(nproc)

# Launch mining
wallet_address=

./xmrig -o pool.hashvault.pro:443 -u "$wallet_address" -p x --tls --cpu-max-threads-hint=80

# Fetch official CLI wallet
wget https://downloads.getmonero.org/cli/linux64
tar -xvf linux64
cd monero-x86_64-linux-gnu-*

./monero-wallet-cli
# Enter wallet name and password, then back up the mnemonic phrase.
