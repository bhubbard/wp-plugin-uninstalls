-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iq-referral-program-for-woocommerce_do_activation_redirect');

