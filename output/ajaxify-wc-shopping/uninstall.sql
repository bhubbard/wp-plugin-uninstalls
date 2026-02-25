-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_registration_generate_password', 'woocommerce_enable_guest_checkout', 'woocommerce_registration_generate_username', 'woocommerce_cart_redirect_after_add', 'awcs-general-settings');

