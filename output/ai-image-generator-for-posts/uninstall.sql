-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aigfp_api_key', 'aigfp_selected_cpts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_temp_aigfp_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_temp_aigfp_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_temp_aigfp_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_temp_aigfp_featured_image');

