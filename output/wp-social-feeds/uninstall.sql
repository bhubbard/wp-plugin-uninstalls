-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfwp_feed_youtube_application_credentials', 'sfwp_feed_youtube_application_option_setting');

