-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('luxe_gallery_options', 'luxe_gallery_version', 'luxe_gallery_settings', 'luxe_gallery_license_key', 'luxe_gallery_license_status', 'luxe_gallery_select_options', 'luxe_gallery_block_select_options', 'luxe_gallery_elementor_select_options', 'luxe_gallery_bricks_select_options', 'luxe_gallery_divi_select_options');
DELETE FROM wp_options WHERE option_name LIKE 'luxe_gallery_output_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_luxe_gallery_grid_config', '_luxe_gallery_hero_images', '_luxe_gallery_data', '_luxe_gallery_images', '_wp_attachment_image_alt', '_luxe_gallery_layout_type', '_luxe_gallery_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_luxe_gallery_grid_config', '_luxe_gallery_hero_images', '_luxe_gallery_data', '_luxe_gallery_images', '_wp_attachment_image_alt', '_luxe_gallery_layout_type', '_luxe_gallery_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_luxe_gallery_grid_config', '_luxe_gallery_hero_images', '_luxe_gallery_data', '_luxe_gallery_images', '_wp_attachment_image_alt', '_luxe_gallery_layout_type', '_luxe_gallery_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_luxe_gallery_grid_config', '_luxe_gallery_hero_images', '_luxe_gallery_data', '_luxe_gallery_images', '_wp_attachment_image_alt', '_luxe_gallery_layout_type', '_luxe_gallery_settings');

