-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_netherlands-checkout-address-autocomplete-for-woocommerce_settings');

