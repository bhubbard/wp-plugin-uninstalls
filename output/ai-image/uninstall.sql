-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdthemes_openai_api_key', 'bdthemes_unsplash_access_key', 'bdthemes_giphy_api_key', 'bdthemes_gemini_api_key', 'bdthemes_ai_image_provider_gemini', 'bdthemes_ai_image_provider_openai', 'bdthemes_ai_image_provider_order', 'bdthemes_ai_image_max_upload_width', 'bdthemes_ai_image_max_upload_height', 'bdthemes_ai_image_default_provider', 'bdthemes_ai_image_attribution', 'bdthemes_ai_image_hide_media_modal_tab', 'bdthemes_ai_image_custom_sizes', 'bdthemes_ai_image_items_per_page', 'bdthemes_ai_image_auto_alt_text', 'bdthemes_ai_image_auto_title', 'bdthemes_ai_image_default_view_mode', 'bdthemes_ai_image_thumbnail_size', 'bdthemes_ai_image_load_more_mode');
DELETE FROM wp_options WHERE option_name LIKE 'bdthemes_ai_image_provider_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

