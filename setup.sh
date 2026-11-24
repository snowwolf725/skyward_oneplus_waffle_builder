cd skyward
rustup target add aarch64-linux-android
cargo install cargo-binstall
cargo binstall cargo-ndk
cp ../patches/waffle.toml devices/                                                                                      
for f in $(ls -v ../patches/*.patch); do git apply "$f"; done 
