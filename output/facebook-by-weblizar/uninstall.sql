-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weblizar_facebook_shortcode_settings', 'weblizar_facebook_feed_option_settings');

