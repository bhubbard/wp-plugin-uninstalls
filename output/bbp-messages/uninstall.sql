-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'active_sitewide_plugins', 'bbpm_force_deactivate', 'bbpm_has_import_data_bbpmessages', 'bbpm_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbpm_mute_notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbpm_mute_notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbpm_mute_notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbpm_mute_notifications');

