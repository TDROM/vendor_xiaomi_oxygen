#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:22333440:13cdb61c97140e28f5a9a8e3a5fb414961aa48ff; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13250560:ea6430febf344dce5e76b51477b6bd6c2ce65af0 EMMC:/dev/block/bootdevice/by-name/recovery 13cdb61c97140e28f5a9a8e3a5fb414961aa48ff 22333440 ea6430febf344dce5e76b51477b6bd6c2ce65af0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
