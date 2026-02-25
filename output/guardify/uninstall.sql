-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guardify_settings', 'guardify_ip_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('guardify_2fa_secret', 'guardify_last_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('guardify_2fa_secret', 'guardify_last_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('guardify_2fa_secret', 'guardify_last_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('guardify_2fa_secret', 'guardify_last_country');

