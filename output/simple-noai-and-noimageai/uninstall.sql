-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('noai_general_options', 'noai_page_options', 'noai_robots_options');

