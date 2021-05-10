PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/soni/audio/system,system)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Ringer.ogg \
    ro.config.notification_sound=Notification.ogg \
    ro.config.alarm_alert=Xperia_alarm.ogg