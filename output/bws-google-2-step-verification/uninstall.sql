-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gglstpvrfctn_options', 'gglstpvrfctn_key', 'bstwbsftwppdtplgns_options', 'recently_activated', 'active_sitewide_plugins', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gglstpvrfctn_email_init_time', 'gglstpvrfctn_backup_code', 'gglstpvrfctn_user_secret', 'gglstpvrfctn_sms_check', 'gglstpvrfctn_hide_profile_banner', 'gglstpvrfctn_hide_settings_banner', 'gglstpvrfctn_email_code', 'gglstpvrfctn_user_options', 'gglstpvrfctn_secret_question_data', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('gglstpvrfctn_email_init_time', 'gglstpvrfctn_backup_code', 'gglstpvrfctn_user_secret', 'gglstpvrfctn_sms_check', 'gglstpvrfctn_hide_profile_banner', 'gglstpvrfctn_hide_settings_banner', 'gglstpvrfctn_email_code', 'gglstpvrfctn_user_options', 'gglstpvrfctn_secret_question_data', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('gglstpvrfctn_email_init_time', 'gglstpvrfctn_backup_code', 'gglstpvrfctn_user_secret', 'gglstpvrfctn_sms_check', 'gglstpvrfctn_hide_profile_banner', 'gglstpvrfctn_hide_settings_banner', 'gglstpvrfctn_email_code', 'gglstpvrfctn_user_options', 'gglstpvrfctn_secret_question_data', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gglstpvrfctn_email_init_time', 'gglstpvrfctn_backup_code', 'gglstpvrfctn_user_secret', 'gglstpvrfctn_sms_check', 'gglstpvrfctn_hide_profile_banner', 'gglstpvrfctn_hide_settings_banner', 'gglstpvrfctn_email_code', 'gglstpvrfctn_user_options', 'gglstpvrfctn_secret_question_data', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');

