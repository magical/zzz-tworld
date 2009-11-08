
ZIP="C:/Program Files/7-zip/7z.exe"

make preview-dist && \
( cd dist && "$ZIP" a ../dist.zip * )


