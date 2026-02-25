-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('porder_name', 'postsdetails');
DELETE FROM wp_options WHERE option_name LIKE 'porder_name_%';

