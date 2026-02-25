-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_thinktwit_settings', 'twitter_api_settings', 'thinktwit_do_activation_redirect', 'widget_thinktwit');
DELETE FROM wp_options WHERE option_name LIKE '%_cache';

