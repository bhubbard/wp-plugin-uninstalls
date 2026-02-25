-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_saltpay_cl_settings');
DELETE FROM wp_options WHERE option_name LIKE '_saltpay_loans_%';
DELETE FROM wp_options WHERE option_name LIKE '_saltpay_loan_advert_%';

