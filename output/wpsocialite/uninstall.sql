-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsocialite_excerpt', 'wpsocialite_networkoptions', 'wpsocialite_mode', 'wpsocialite_vkontakte_apiId', 'wpsocialite_style', 'wpsocialite_single', 'wpsocialite_position', 'wpsocialite_post_types', 'wpsocialite_twitter_username');

