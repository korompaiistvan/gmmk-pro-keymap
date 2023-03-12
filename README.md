

Build and start the container and bind mount the keymap you want to compile
`docker build -t compile-qmk-in-docker . && docker run --rm --name qmk -it -v "$(pwd)"/kpisti:/root/qmk_firmware/keyboards/gmmk/pro/rev1/iso/keymaps/kpisti compile-qmk-in-docker bash`

In the new terminal 
`qmk compile -kb gmmk/pro/rev1/iso -km kpisti`

In a separate terminal
`docker cp qmk:/root/qmk_firmware/.build/. ./build`



Note you might have to tweak the keymap itself for a configureation change to picked up on repeat compilation