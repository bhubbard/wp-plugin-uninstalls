-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_polopagpayments_geteway_settings', 'polopagpayments_last_check');

