-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_lightbox_folders', 'responsive_lightbox_version', 'responsive_lightbox_licenses', 'rl_settings', 'responsive_lightbox_settings', 'rl_configuration', 'responsive_lightbox_configuration', 'responsive_lightbox_capabilities', 'responsive_lightbox_builder', 'responsive_lightbox_remote_library', 'responsive_lightbox_basicgrid_gallery', 'responsive_lightbox_basicslider_gallery', 'responsive_lightbox_basicmasonry_gallery', 'responsive_lightbox_activation_date', 'rl-attachment_ids_by_url', 'rl-image_sizes_by_url', 'rl_active_tour', 'rl_activation_redirect', 'responsive_lightbox_addons_feed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rl_config', '_rl_design', '_rl_lightbox', '_rl_images_count', 'meta-box-order_rl_gallery', '_rl_featured_image_type', '_rl_featured_image', '_thumbnail_id', '_rl_images', 'wpml_media_processed', '_rl_paging');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rl_config', '_rl_design', '_rl_lightbox', '_rl_images_count', 'meta-box-order_rl_gallery', '_rl_featured_image_type', '_rl_featured_image', '_thumbnail_id', '_rl_images', 'wpml_media_processed', '_rl_paging');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rl_config', '_rl_design', '_rl_lightbox', '_rl_images_count', 'meta-box-order_rl_gallery', '_rl_featured_image_type', '_rl_featured_image', '_thumbnail_id', '_rl_images', 'wpml_media_processed', '_rl_paging');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rl_config', '_rl_design', '_rl_lightbox', '_rl_images_count', 'meta-box-order_rl_gallery', '_rl_featured_image_type', '_rl_featured_image', '_thumbnail_id', '_rl_images', 'wpml_media_processed', '_rl_paging');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rl_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rl_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rl_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rl_%';

