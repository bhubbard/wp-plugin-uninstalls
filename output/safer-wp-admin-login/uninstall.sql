-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwl_page', 'rwl_redirect', 'rwl_admin');

