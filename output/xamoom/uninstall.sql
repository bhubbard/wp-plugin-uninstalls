-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xamoom_api_key', 'xamoom_custom_css', 'xamoom-plugin-activated');

