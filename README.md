This is a directory to help you build a Docker image for
[https://foundryvtt.com/](FoundryVTT). It uses an
[https://hub.docker.com/_/node](official node image).

# Build and run the image

Clone the repository

    git clone https://github.com/nlegrand/build_foundry_vtt_image.git

You should download the FoundryVTT and put it in a `files` directory
naned `foundryvtt.zip`.

    mkdir files && cd files
    wget -O foundryvtt.zip YOUR-FOUNDRY-TMP-LINK

You can now build and run the image

    podman build -t=MY-IMAGE-NAME -f Dockerfile
    podman run -v /home/YOUR_ID/YOUR_PERSISTENT_DATA:/home/node/data -p 30000:30000 --name MY-CONTAINER-NAME MY-IMAGE-NAME
