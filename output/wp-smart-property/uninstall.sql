-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_grid_layout_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('property_address', 'admin_notes', 'post_grid_meta_options', 'post_grid_post_settings', 'post_grid_ads_loop_meta_options', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('property_address', 'admin_notes', 'post_grid_meta_options', 'post_grid_post_settings', 'post_grid_ads_loop_meta_options', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('property_address', 'admin_notes', 'post_grid_meta_options', 'post_grid_post_settings', 'post_grid_ads_loop_meta_options', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('property_address', 'admin_notes', 'post_grid_meta_options', 'post_grid_post_settings', 'post_grid_ads_loop_meta_options', '_wp_attachment_image_alt');

