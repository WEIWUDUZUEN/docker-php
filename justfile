build:
    docker build . -t phpfb:7.2 --progress=plain

info:
    docker run --rm \
        --name=test \
        -p 8088:80 \
        -v $(pwd)/index.php:/var/www/html/index.php \
        phpfb:7.2

test:
    docker run --rm \
        --name=test \
        -p 8088:80 \
        -v $(pwd)/../mantis-php/mantis:/var/www/html \
        phpfb:7.2