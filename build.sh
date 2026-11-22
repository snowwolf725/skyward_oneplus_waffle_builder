cd skyward
cp ../patches/waffle.toml devices/
git apply ../patches/1.patch
git apply ../patches/1.patch
cargo ndk -t arm64-v8a --platform 30 build --release -p skyward
cargo build --release -p skyward-pack
cargo ndk -t arm64-v8a --platform 30 clippy --locked -p skyward -p skyward-install -p skyward-systems -p skyward-system-init -- -D warnings
cargo ndk -t arm64-v8a --platform 30 build --locked --release -p skyward-system-init --target-dir target/system-init
target/release/skyward-pack recovery --stock ../stock/recovery_stock.img --binary target/aarch64-linux-android/release/skyward --system-init target/system-init/aarch64-linux-android/release/system-init --config "devices/waffle.toml" --font resources/fonts/MiSansVF.ttf --mono resources/fonts/KirkMono-Regular.ttf --mono-license resources/fonts/KirkMono-OFL.txt --out "../skyward-waffle.img"

