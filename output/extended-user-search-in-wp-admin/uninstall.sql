-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flsiwa_meta_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_name');

