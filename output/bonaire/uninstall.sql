-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bonaire_options', 'bonaire_wpcf7_queue', 'bonaire_wpcf7_incoming', 'bonaire_reset_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fields', '_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fields', '_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fields', '_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fields', '_meta');

