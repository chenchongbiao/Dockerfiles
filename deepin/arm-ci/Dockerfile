FROM linuxdeepin/deepin:beige-arm64-v1.2.0

RUN echo \
"deb [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/main/standard/ ./\n\
deb-src [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/main/standard/ ./\n\
deb [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/community/deepin_develop/ ./\n\
deb-src [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/community/deepin_develop/ ./\n\
deb [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/dde/deepin_develop/ ./\n\
deb-src [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/dde/deepin_develop/ ./\n\
deb [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/GPL:/Rust/standard/ ./\n\
deb-src [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/GPL:/Rust/standard/ ./" \
    > /etc/apt/sources.list
CMD [ "bash" ]
