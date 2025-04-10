#!/bin/bash

echo "unpacking dtbo-orig.img"
~/lineage/out/host/linux-x86/bin/mkdtimg dump dtbo-orig.img -b dtbo-unpack > /dev/null

for filename in $(ls); do
    if [[ "$filename" == dtbo-unpack.* ]]; then
        strings $filename | grep -q elish
        if [ $? -eq 0 ]; then
            echo "patching $filename"
            sed -i 's/\x05\xC2/\x00\x93/g' $filename
            sed -i 's/\x09\x37/\x00\xEC/g' $filename
        fi
    fi
done

echo "packing dtbo.img"
~/lineage/out/host/linux-x86/bin/mkdtimg create dtbo.img dtbo-unpack.*
rm dtbo-unpack.*
