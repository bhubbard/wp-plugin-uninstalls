-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmaw_ios_appid', 'pmaw_android_appid', 'pmaw_android_title', 'pmaw_android_author', 'pmaw_android_icon', 'pmaw_android_app_store', 'pmaw_android_price', 'pmaw_android_button');

