-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cks_rui_options', 'cks_rui_version', 'roi_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_image_safe');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_image_safe');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_image_safe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_image_safe');

