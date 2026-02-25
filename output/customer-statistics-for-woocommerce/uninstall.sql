-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customer_statistics_roles', 'customer_statistics_detailed_view');

