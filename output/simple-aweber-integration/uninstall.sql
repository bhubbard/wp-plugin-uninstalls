-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aweber_style', 'aweber_js', 'aweber_post', 'aweber_page', 'aweber_post_start', 'aweber_page_start', 'aweber_priority');

