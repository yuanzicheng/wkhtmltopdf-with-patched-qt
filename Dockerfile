FROM alpine:edge

RUN apk add --update --no-cache \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family

COPY wkhtmltopdf /bin/wkhtmltopdf
COPY fonts/SourceHanSansCN-Normal.otf /usr/share/fonts/SourceHanSansCN-Normal.otf

