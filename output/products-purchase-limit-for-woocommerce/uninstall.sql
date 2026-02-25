-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartlimit_min', 'cartlimit_max', 'product_limit_check');

