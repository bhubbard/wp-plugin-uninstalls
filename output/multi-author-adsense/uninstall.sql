-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maa_settings', 'multiauthoradsense_license_key', 'multiauthoradsense_license_status');
DELETE FROM wp_options WHERE option_name LIKE '%admin_ad_mode';
DELETE FROM wp_options WHERE option_name LIKE '%help_toggle';
DELETE FROM wp_options WHERE option_name LIKE '%pro_demo';
DELETE FROM wp_options WHERE option_name LIKE '%admin_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('maa_settings', 'maa_disable_display', 'maa_disable_auto_insert', 'maa_settings_backup');
DELETE FROM wp_usermeta WHERE meta_key IN ('maa_settings', 'maa_disable_display', 'maa_disable_auto_insert', 'maa_settings_backup');
DELETE FROM wp_termmeta WHERE meta_key IN ('maa_settings', 'maa_disable_display', 'maa_disable_auto_insert', 'maa_settings_backup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('maa_settings', 'maa_disable_display', 'maa_disable_auto_insert', 'maa_settings_backup');

