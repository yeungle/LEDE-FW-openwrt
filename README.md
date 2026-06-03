git clone --depth=1 -b fanchmwrt-25.12.4 https://github.com/fanchmwrt/fanchmwrt.git
cd fanchmwrt

./scripts/feeds update -a

./scripts/feeds install -a

make menuconfig
