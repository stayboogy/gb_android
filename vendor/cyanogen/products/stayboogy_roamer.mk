$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/zte/roamer/device_roamer.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

include frameworks/base/data/sounds/AllAudio.mk

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.persist.service.adb.enable=1

# stayboogy logo and boot animation
PRODUCT_COPY_FILES += \
device/zte/roamer/root/initlogo.rle:root/initlogo.rle \
device/zte/roamer/root/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_NAME := stayboogy_roamer
PRODUCT_BRAND := zte
PRODUCT_DEVICE := roamer
PRODUCT_MODEL := Z990
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=roamer BUILD_ID=SBG10 BUILD_FINGERPRINT=zte/roamer/stayboogy:2.3.7/SBG10/121341:user/release-keys PRIVATE_BUILD_DESC="roamer-user 2.3.7 SBG10 121341 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.themeId = Cyanbread \
persist.sys.themePackageName = com.tmobile.theme.Cyanbread \
ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
ro.com.google.clientidbase=android-google \
ro.com.android.wifi-watchlist=GoogleGuest \
ro.setupwizard.enterprise_mode=1 \
ro.com.android.dateformat=MM-dd-yyyy \
ro.com.android.dataroaming=false
ro.config.ringtone=Playa.ogg \
ro.config.notification_sound=regulus.ogg \
ro.config.alarm_alert=Alarm_Beep_03.ogg

KERNEL_MODULES_DIR:=/system/lib/modules

TINY_TOOLBOX:=true

PRODUCT_PACKAGES += \
ThemeManager \
ThemeChooser \
com.tmobile.themes \
Androidian \
Cyanbread \
AndroidTerm \
FileManager \
DSPManager \
libcyanogen-dsp \
screenshot \
CMScreenshot \
CMWallpapers \
Provision \
GoogleSearch \
LatinIME \
Stk \
CMParts

PRODUCT_COPY_FILES += \
vendor/cyanogen/prebuilt/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries
