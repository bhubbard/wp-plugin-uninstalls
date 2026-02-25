-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wcspc_license_notices_hide', 'activate-variation-swatches-style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('color', 'image');
DELETE FROM wp_usermeta WHERE meta_key IN ('color', 'image');
DELETE FROM wp_termmeta WHERE meta_key IN ('color', 'image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('color', 'image');

