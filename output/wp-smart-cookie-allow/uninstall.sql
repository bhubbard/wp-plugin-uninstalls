-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_do_activation_redirect', 'cookie_text_data', 'cookie_text_time', 'cookie_text_url', 'cookie_text_bg', 'cookie_text_brd');

