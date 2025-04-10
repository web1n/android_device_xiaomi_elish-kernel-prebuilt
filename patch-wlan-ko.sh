#!/bin/bash

sed -i "s|wlan/qca_cld/qca6390/wlan_mac\.bin|wlan/qca_cld/wlan_mac\.bin\x00\x00\x00\x00\x00\x00\x00\x00|" modules/qca_cld3_qca6390.ko
sed -i "s|wlan/qca_cld/qca6390/WCNSS_qcom_cfg\.ini|wlan/qca_cld/WCNSS_qcom_cfg\.ini\x00\x00\x00\x00\x00\x00\x00\x00|" modules/qca_cld3_qca6390.ko

sed -i "s|wlan/qca_cld/qca6490/wlan_mac\.bin|wlan/qca_cld/wlan_mac\.bin\x00\x00\x00\x00\x00\x00\x00\x00|" modules/qca_cld3_qca6490.ko
sed -i "s|wlan/qca_cld/qca6490/WCNSS_qcom_cfg\.ini|wlan/qca_cld/WCNSS_qcom_cfg\.ini\x00\x00\x00\x00\x00\x00\x00\x00|" modules/qca_cld3_qca6490.ko
