-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wl_twitter_api_settings', 'ali_twitter_shortcode');

