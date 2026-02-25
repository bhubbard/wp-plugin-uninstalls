-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aps_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aps_last_updated', 'aps_used_passwords');
DELETE FROM wp_usermeta WHERE meta_key IN ('aps_last_updated', 'aps_used_passwords');
DELETE FROM wp_termmeta WHERE meta_key IN ('aps_last_updated', 'aps_used_passwords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aps_last_updated', 'aps_used_passwords');

