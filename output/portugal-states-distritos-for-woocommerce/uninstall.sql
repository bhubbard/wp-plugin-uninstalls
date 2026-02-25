-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webdados_portuguese_postcodes_nag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webdados_portuguese_postcodes_nag_dismissed_until');
DELETE FROM wp_usermeta WHERE meta_key IN ('webdados_portuguese_postcodes_nag_dismissed_until');
DELETE FROM wp_termmeta WHERE meta_key IN ('webdados_portuguese_postcodes_nag_dismissed_until');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webdados_portuguese_postcodes_nag_dismissed_until');

