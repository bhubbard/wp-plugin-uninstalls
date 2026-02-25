-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ypmnpayment_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals';
DELETE FROM wp_options WHERE option_name LIKE '%ypmnpayment_action_message';

