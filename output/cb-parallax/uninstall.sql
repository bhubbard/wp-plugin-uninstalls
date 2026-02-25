-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_parallax_options', 'cb_parallax_plugin', 'cb_parallax_background_image_missing', 'cb_parallax_background_image_missmatch', 'cb_parallax_has_nsr');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cb_parallax');
DELETE FROM wp_usermeta WHERE meta_key IN ('cb_parallax');
DELETE FROM wp_termmeta WHERE meta_key IN ('cb_parallax');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cb_parallax');

