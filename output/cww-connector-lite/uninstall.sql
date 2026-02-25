-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cww_cf7apikey', 'cww_cf7apiurl');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cww_enable', 'cww_fields', 'cww_credentials');
DELETE FROM wp_usermeta WHERE meta_key IN ('cww_enable', 'cww_fields', 'cww_credentials');
DELETE FROM wp_termmeta WHERE meta_key IN ('cww_enable', 'cww_fields', 'cww_credentials');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cww_enable', 'cww_fields', 'cww_credentials');

