-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_magazine_blocks_activation_redirect', '_magazine_blocks_blocks_css', 'widget_block', '_magazine_blocks_global_styles_generated_timestamp', '_magazine_blocks_version', 'magazine-blocks_global_styles', '_magazine_blocks_activation_time', 'dateWeatherApiKey', 'dateWeatherZipCode', 'dateWeatherLatitude', 'dateWeatherLongitude', '_magazine_blocks_settings', '_magazine_blocks_widget_css', 'downloaded_font_files', '_magazine_blocks_library_data', '_magazine_blocks_media_items', 'magazine_blocks_temp', 'magazine_blocks_weather', 'magazine_blocks_location', 'magazine_blocks_weather_info');
DELETE FROM wp_options WHERE option_name LIKE '%]';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_magazine_blocks_active', '_magazine_blocks_css', '_magazine_blocks_blocks_css', '_wp_attachment_image_alt', 'video_url', '_mzb_post_view_count', '_mzb_template', '_magazine_blocks_review', '_magazine_blocks_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_magazine_blocks_active', '_magazine_blocks_css', '_magazine_blocks_blocks_css', '_wp_attachment_image_alt', 'video_url', '_mzb_post_view_count', '_mzb_template', '_magazine_blocks_review', '_magazine_blocks_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_magazine_blocks_active', '_magazine_blocks_css', '_magazine_blocks_blocks_css', '_wp_attachment_image_alt', 'video_url', '_mzb_post_view_count', '_mzb_template', '_magazine_blocks_review', '_magazine_blocks_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_magazine_blocks_active', '_magazine_blocks_css', '_magazine_blocks_blocks_css', '_wp_attachment_image_alt', 'video_url', '_mzb_post_view_count', '_mzb_template', '_magazine_blocks_review', '_magazine_blocks_image_hash');

