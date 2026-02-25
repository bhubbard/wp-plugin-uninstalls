-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('category_subscription_version', 'cat_sub_last_daily_message_run', 'cat_sub_last_weekly_message_run', 'cat_sub_install_unixtime');
DELETE FROM wp_options WHERE option_name LIKE 'cat_sub_%';
DELETE FROM wp_options WHERE option_name LIKE '%_message_run';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cat_sub_delivery_format_pref');
DELETE FROM wp_usermeta WHERE meta_key IN ('cat_sub_delivery_format_pref');
DELETE FROM wp_termmeta WHERE meta_key IN ('cat_sub_delivery_format_pref');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cat_sub_delivery_format_pref');

