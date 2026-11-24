# skyward_oneplus_waffle_builder
Skyward recovery for OnePlus 12
Skyward is a recovery written in Rust, from scratch.

## 🔔 Device Specifications

| item | value |
|---|---|
| Model | OnePlus 12（PJD110/CPH2573/CPH2581/CPH2583） |
| Code Name |  `waffle`, `OP5929L1`,  `OP595DL1` |
| SOC | Qualcomm SM8650（`Pineapple`） |
| OS | ColorOS/OxygenOS |
| Partition | Virtual A/B |
| Touch | OPLUS HBP（`aw/aw_haptic`、`oplus_hbp_core`、`/dev/hbp0`、`/dev/tcm0`）, Synaptics-S3910 |
| Haptics | pm8550b（`/sys/class/qcom-haptics/lra_frequency_hz`） |

---

## 📱 Installing Skyward:
Skyward needs an unlocked bootloader. Download the zip for your phone from Releases, where each shows as the phone's model and codename, such as OnePlus 12(waffle). Check it against SHA256SUMS, unzip it, and flash the image inside to the recovery partition of the slot the phone runs from, with the phone in fastboot mode:

```bash
unzip skyward-v0.5.1-waffle-ColorOS.zip
fastboot flash recovery recovery.img
fastboot reboot recovery
```

Afterwards Skyward updates itself over Wi-Fi from its newest release, on the Skyward update page in Settings; a newer image, unzipped, also installs from its own Install page. With Flash Skyward again on, a system update or zip that writes over the recovery partitions gets Skyward back in them.

adb in Skyward is a root shell that needs no authorization on the phone: anyone with the phone and a cable can reach its storage while it is in recovery.

## ⏫️ Feature:
- Android data decryption with PIN or password
- ADB and MTP
- Display and full touchscreen input
- Vibration and haptic feedback
- Brightness control
- Wi-Fi
- Physical and logical partition flashing
- ZIP and image installation
- Backup and restore
- Factory reset, wipe, and Format Data

## ⚠️ Todo:
- OTA zip installation
- Plugin system and Plugin Manager
- Root Manager

## 📋 Build
```bash
git clone https://github.com/snowwolf725/skyward_oneplus_waffle_builder.git
cd skyward_oneplus_waffle_builder
git submodule update --init --remote --recursive
./setup.sh
./build.sh
```

## 🎸 Note 


## 🎉 Credit:
* kirklin
* SorasakiHinaHusband
* TvTzzz
