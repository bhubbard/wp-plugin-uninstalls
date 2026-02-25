-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storeone_extension_theme_slider_moved_dissmiss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tf_slider_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('tf_slider_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('tf_slider_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tf_slider_data');

