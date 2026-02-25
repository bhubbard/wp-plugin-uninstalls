-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weam_attr_global_settings', 'weam_attr_backups', 'weam_attribute_settings', 'weam_attr_version', 'weam_attr_activated_at', 'weam_attr_first_install', 'weam_attr_stats', 'weam_attr_keep_data_on_uninstall', 'weam_attr_db_version', 'weam_attr_samples_created', 'weam_attr_auto_enabled_count', 'weam_attr_activation_notice_shown', 'active_sitewide_plugins', 'weam_attr_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE 'weam_attr_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order');
DELETE FROM wp_usermeta WHERE meta_key IN ('order');
DELETE FROM wp_termmeta WHERE meta_key IN ('order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order');

