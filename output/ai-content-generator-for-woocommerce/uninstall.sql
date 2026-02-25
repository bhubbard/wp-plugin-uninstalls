-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtofe_chatgpt_api_key', 'wtofe_ai_debug_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_image_gallery');

