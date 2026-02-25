-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sitecounter_start', 'sitecounter_cookies', 'sitecounter_help', 'sitecounter_visit_day');

