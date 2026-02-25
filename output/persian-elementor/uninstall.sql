-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('persian_elementor');
DELETE FROM wp_options WHERE option_name LIKE 'zarinpal_transaction_%';

