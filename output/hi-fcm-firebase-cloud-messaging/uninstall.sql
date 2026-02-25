-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hi_fcm_api_key', 'hi_fcm_channel', 'hi_fcm_sound');
DELETE FROM wp_options WHERE option_name LIKE 'hi_fcm_post_type_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hi_fcm_push_notification', 'hi_fcm_use_channel', 'hi_fcm_subscription');
DELETE FROM wp_usermeta WHERE meta_key IN ('hi_fcm_push_notification', 'hi_fcm_use_channel', 'hi_fcm_subscription');
DELETE FROM wp_termmeta WHERE meta_key IN ('hi_fcm_push_notification', 'hi_fcm_use_channel', 'hi_fcm_subscription');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hi_fcm_push_notification', 'hi_fcm_use_channel', 'hi_fcm_subscription');

