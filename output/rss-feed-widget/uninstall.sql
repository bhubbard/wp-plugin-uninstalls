-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfw_style', 'rfw_mutes', 'rfw_rss_image_size', 'rfw_sc_ids', 'rfw_sc_google_api_key', 'rfw_custom_tag_patterns', 'rsfw_options', 'rfw_short_code_list', 'rfw_short_code_settings', 'widget_rfw_dock');

