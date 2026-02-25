-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_hub_enable_media_modal', 'image_hub_max_image_width', 'image_hub_max_image_height', 'image_hub_api_keys_giphy_api_key', 'image_hub_api_keys_openverse_client_id', 'image_hub_api_keys_openverse_client_secret', 'image_hub_api_keys_pexels_api_key', 'image_hub_api_keys_pixabay_api_key', 'image_hub_api_keys_unsplash_access_key', 'image_hub_enable_unsplash', 'image_hub_enable_openverse', 'image_hub_enable_pixabay', 'image_hub_enable_pexels', 'image_hub_enable_giphy', 'image_hub_enable_image_attribution', 'image_hub_use_default_keys');
DELETE FROM wp_options WHERE option_name LIKE 'image_hub_enable_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

