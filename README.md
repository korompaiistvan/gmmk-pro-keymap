

Build and start the container and bind mount the keymap you want to compile
`docker build -t compile-qmk-in-docker . && docker run --rm --name qmk -it -v "$(pwd)"/kpisti:/root/qmk_firmware/keyboards/gmmk/pro/rev1/iso/keymaps/kpisti compile-qmk-in-docker bash`

In the new terminal 
`qmk compile -kb gmmk/pro/rev1/iso -km kpisti`

In a separate terminal
`docker cp qmk:/root/qmk_firmware/.build/. ./build`

If you want to run those two commands in one, run the following from the host:
`docker exec qmk bash -c 'qmk compile -kb gmmk/pro/rev1/iso -km kpisti' && docker cp qmk:/root/qmk_firmware/.build/. ./build`