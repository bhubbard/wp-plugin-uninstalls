-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('additional_fees_for_wc_payment_gateway_static', 'additional_fees_for_wc_payment_gateway_dynamic');
DELETE FROM wp_options WHERE option_name LIKE '%_static';
DELETE FROM wp_options WHERE option_name LIKE '%_dynamic';

