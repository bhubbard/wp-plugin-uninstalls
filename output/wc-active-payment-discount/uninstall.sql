-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wap_payment_status', 'wap_payment_data', 'wap_status');

