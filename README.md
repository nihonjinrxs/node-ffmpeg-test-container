# node-ffmpeg-test-container
Test worker Docker container with ffmpeg and node

## Building the container

You can build the container using the following:
```{bash}
$ TEST_CONTAINER_VERSION=`cat VERSION` docker-compose build
```

## Running the container (with example output)
```{bash}
$ TEST_CONTAINER_VERSION=`cat VERSION` docker-compose up
Creating node-ffmpeg-test-container_test_worker_1 ... done
Attaching to node-ffmpeg-test-container_test_worker_1
test_worker_1  | [2018-08-14-16:59:11.224+0000] Started container version 1.0.1... checking things out...
test_worker_1  | ffmpeg version 3.2.12-1~deb9u1 Copyright (c) 2000-2018 the FFmpeg developers
test_worker_1  |   built with gcc 6.3.0 (Debian 6.3.0-18+deb9u1) 20170516
test_worker_1  |   configuration: --prefix=/usr --extra-version='1~deb9u1' --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --enable-gpl --disable-stripping --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libebur128 --enable-libflite --enable-libfontconfig--enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmp3lame --enable-libopenjpeg --enable-libopenmpt --enable-libopus --enable-libpulse --enable-librubberband --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh--enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzmq --enable-libzvbi --enable-omx --enable-openal --enable-opengl --enable-sdl2 --enable-libdc1394 --enable-libiec61883 --enable-chromaprint --enable-frei0r --enable-libopencv --enable-libx264 --enable-shared
test_worker_1  |   libavutil      55. 34.101 / 55. 34.101
test_worker_1  |   libavcodec     57. 64.101 / 57. 64.101
test_worker_1  |   libavformat    57. 56.101 / 57. 56.101
test_worker_1  |   libavdevice    57.  1.100 / 57.  1.100
test_worker_1  |   libavfilter     6. 65.100 /  6. 65.100
test_worker_1  |   libavresample   3.  1.  0 /  3.  1.  0
test_worker_1  |   libswscale      4.  2.100 /  4.  2.100
test_worker_1  |   libswresample   2.  3.100 /  2.  3.100
test_worker_1  |   libpostproc    54.  1.100 / 54.  1.100
test_worker_1  |
test_worker_1  |   configuration:
test_worker_1  |     --prefix=/usr
test_worker_1  |     --extra-version='1
test_worker_1  |     deb9u1'
test_worker_1  |     --toolchain=hardened
test_worker_1  |     --libdir=/usr/lib/x86_64-linux-gnu
test_worker_1  |     --incdir=/usr/include/x86_64-linux-gnu
test_worker_1  |     --enable-gpl
test_worker_1  |     --disable-stripping
test_worker_1  |     --enable-avresample
test_worker_1  |     --enable-avisynth
test_worker_1  |     --enable-gnutls
test_worker_1  |     --enable-ladspa
test_worker_1  |     --enable-libass
test_worker_1  |     --enable-libbluray
test_worker_1  |     --enable-libbs2b
test_worker_1  |     --enable-libcaca
test_worker_1  |     --enable-libcdio
test_worker_1  |     --enable-libebur128
test_worker_1  |     --enable-libflite
test_worker_1  |     --enable-libfontconfig
test_worker_1  |     --enable-libfreetype
test_worker_1  |     --enable-libfribidi
test_worker_1  |     --enable-libgme
test_worker_1  |     --enable-libgsm
test_worker_1  |     --enable-libmp3lame
test_worker_1  |     --enable-libopenjpeg
test_worker_1  |     --enable-libopenmpt
test_worker_1  |     --enable-libopus
test_worker_1  |     --enable-libpulse
test_worker_1  |     --enable-librubberband
test_worker_1  |     --enable-libshine
test_worker_1  |     --enable-libsnappy
test_worker_1  |     --enable-libsoxr
test_worker_1  |     --enable-libspeex
test_worker_1  |     --enable-libssh
test_worker_1  |     --enable-libtheora
test_worker_1  |     --enable-libtwolame
test_worker_1  |     --enable-libvorbis
test_worker_1  |     --enable-libvpx
test_worker_1  |     --enable-libwavpack
test_worker_1  |     --enable-libwebp
test_worker_1  |     --enable-libx265
test_worker_1  |     --enable-libxvid
test_worker_1  |     --enable-libzmq
test_worker_1  |     --enable-libzvbi
test_worker_1  |     --enable-omx
test_worker_1  |     --enable-openal
test_worker_1  |     --enable-opengl
test_worker_1  |     --enable-sdl2
test_worker_1  |     --enable-libdc1394
test_worker_1  |     --enable-libiec61883
test_worker_1  |     --enable-chromaprint
test_worker_1  |     --enable-frei0r
test_worker_1  |     --enable-libopencv
test_worker_1  |     --enable-libx264
test_worker_1  |     --enable-shared
test_worker_1  | v10.8.0
test_worker_1  | 6.2.0
test_worker_1  | [2018-08-14-16:59:12.064+0000] Finished checking things out.
test_worker_1  |
test_worker_1  | [2018-08-14-16:59:12.066+0000] Simulating running process (2 tasks of 10 - 30 sec each).
test_worker_1  | [2018-08-14-16:59:12.070+0000] Executing task 1...
test_worker_1  | [2018-08-14-16:59:41.040+0000] Task 1 completed in 29 seconds.
test_worker_1  | [2018-08-14-16:59:41.042+0000] Executing task 2...
test_worker_1  | [2018-08-14-17:00:00.013+0000] Task 2 completed in 19 seconds.
test_worker_1  |
test_worker_1  | [2018-08-14-17:00:00.015+0000] Job completed in 48 seconds.
node-ffmpeg-test-container_test_worker_1 exited with code 0
```
