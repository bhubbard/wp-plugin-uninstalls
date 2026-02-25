-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weeconnectpay_integration');
DELETE FROM wp_options WHERE option_name LIKE '%integration';

