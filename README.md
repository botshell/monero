# Monero Mining Process

## 1. Install dependencies
```
apt update
apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

```
## 2. Fetch and compile xmrig
```
git clone https://github.com/xmrig/xmrig.git
cd xmrig

mkdir build && cd build
cmake ..
make -j$(nproc)

```

##  3. Launch mining

```
wallet_address=

./xmrig -o pool.hashvault.pro:443 -u "$wallet_address" -p x --tls --cpu-max-threads-hint=80

# Fetch official CLI wallet
wget https://downloads.getmonero.org/cli/linux64
tar -xvf linux64
cd monero-x86_64-linux-gnu-*

./monero-wallet-cli
# ./monero-wallet-cli --daemon-address node.moneroworld.com:18089
# Enter wallet file name and wallet password, then back up the mnemonic phrase.
```

# monero-wallet-cli commands
set_daemon node.monerodevs.org:18089 trusted
status
address
balance
exit

# Check mining status
# https://hashvault.pro/monero/dashboard
