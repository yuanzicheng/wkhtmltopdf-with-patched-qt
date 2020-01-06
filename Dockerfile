FROM alpine:edge
# 1.add dependencies for wkhtmltopdf
RUN apk add --update --no-cache \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family
# 2.copy executable wkhtmltopdf to the container's `/bin` folder
COPY wkhtmltopdf /bin/wkhtmltopdf
# 3.add chinese font `SourceHanSansCN` to the container
COPY fonts/SourceHanSansCN-Normal.otf /usr/share/fonts/SourceHanSansCN-Normal.otf
