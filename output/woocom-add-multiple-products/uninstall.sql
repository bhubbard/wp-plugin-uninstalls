-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocom_amp_user_check', 'woocom_amp_user_role', 'woocom_amp_product_cat', 'woocom_amp_do_activation_redirect');

