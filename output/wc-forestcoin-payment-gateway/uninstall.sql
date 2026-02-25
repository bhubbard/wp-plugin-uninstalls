-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_fc_payment_gateway_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

