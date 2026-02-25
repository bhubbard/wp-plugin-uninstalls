-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_imsizer_wplimit_onoff', 'wp_imsizer_onoff', 'wp_imsizer_width', 'wp_imsizer_height', 'wp_imsizer_setalts', 'wp_imsizer_setname', 'wp_imsizer_setcapt', 'wp_imsizer_setdesc', 'wp_imsizer_restrict_size', 'wp_imsizer_max_file_size', 'wp_imsizer_file_size_error', 'wp_imsizer_convertpng_yesno', 'wp_imsizer_width ', 'wp_imsizer_height ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

