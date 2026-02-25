-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smailyforwp_api_option', 'smailyforwp_form_option', 'widget_smaily_subscription_widget', 'smailyforwp_db_version', 'smailyforwp_plugin_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smaily_for_wp_deprecation_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('smaily_for_wp_deprecation_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('smaily_for_wp_deprecation_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smaily_for_wp_deprecation_notice_dismissed');

