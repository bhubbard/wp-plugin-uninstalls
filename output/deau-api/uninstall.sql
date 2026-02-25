-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deau_api', 'deau_api_shortcodes', 'deau_api_shortcode_history', 'deau_api_localhost');

