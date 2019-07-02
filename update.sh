#!/bin/bash
script_full_path=$(dirname "$0")
DATE=$(date -R -u)
cd $script_full_path

rm Packages.xz Packages.g Release.gpg Release

dpkg-scanpackages -m . > packages
gzip -c9 -k Packages > Packages.gz
xz -c9 -k Packages > Packages.xz

cd $script_full_path/dists/georgia

OUTPUT="Release"
FILES=(
  Packages
  Packages.gz
  Packages.xz
  Release
)

RETURN=false


function generateHash() {
    local CHECKSUM=$($1 $2 | awk '{print $1}')
    local SIZE=$(wc -c < $2)
    RETURN="${CHECKSUM} ${SIZE} $2"
}

echo 'Origin: yourRepoNameHere
Label: yourRepoNameHere
Suite: stable
Version: 1.0
Codename: macOS
Date: '$DATE'
Architectures: darwin-amd64
Components: main
Description: Your amazing description about your repository here' >> ${OUTPUT}

echo "MD5Sum:" >> ${OUTPUT}
for i in "${FILES[@]}"; do
    generateHash md5sum ${i}
    echo " ${RETURN}" >> ${OUTPUT}
done

echo "SHA1:" >> ${OUTPUT}
for i in "${FILES[@]}"; do
    generateHash sha1sum ${i}
    echo " ${RETURN}" >> ${OUTPUT}
done

echo "SHA256:" >> ${OUTPUT}
for i in "${FILES[@]}"; do
    generateHash sha256sum ${i}
    echo " ${RETURN}" >> ${OUTPUT}
done

echo "SHA512:" >> ${OUTPUT}
for i in "${FILES[@]}"; do
generateHash sha512sum ${i}
echo " ${RETURN}" >> ${OUTPUT}
done

gpg -abs --default-key F0F27C8758ADE7983CA32739EE6CD017B9244FB1 -o ./Release.gpg ./Release

echo "Done updating!"
