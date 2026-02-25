-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_extended_version', 'embed_extended_notice_dismiss_greeting', 'embed_extended_url_patterns', 'embed_extended_url_patterns_mode', 'embed_extended_gmaps_api_key', 'embed_extended_parse_html_content', 'embed_extended_thumbnail_position', 'embed_extended_custom_css');
DELETE FROM wp_options WHERE option_name LIKE 'embed_extended_notice_dismiss_%';

