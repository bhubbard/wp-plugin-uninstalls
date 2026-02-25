-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npd_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('npd_balance', 'npd_used_discount');
DELETE FROM wp_usermeta WHERE meta_key IN ('npd_balance', 'npd_used_discount');
DELETE FROM wp_termmeta WHERE meta_key IN ('npd_balance', 'npd_used_discount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('npd_balance', 'npd_used_discount');

