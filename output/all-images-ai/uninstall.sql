-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('all-images-api-key', 'all-images-ai-settings', 'all-images-ai-tmp-msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('allimages_auto_image', '_wp_attachment_image_alt', 'all_images_page_all_images_ai_generations_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('allimages_auto_image', '_wp_attachment_image_alt', 'all_images_page_all_images_ai_generations_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('allimages_auto_image', '_wp_attachment_image_alt', 'all_images_page_all_images_ai_generations_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('allimages_auto_image', '_wp_attachment_image_alt', 'all_images_page_all_images_ai_generations_per_page');

