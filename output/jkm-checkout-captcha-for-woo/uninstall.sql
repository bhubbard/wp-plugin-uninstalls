-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jkmccfw_woo_login', 'jkmccfw_woo_register', 'jkmccfw_woo_checkout', 'jkmccfw_guest_only', 'jkmccfw_woo_checkout_pos', 'jkmccfw_login', 'jkmccfw_register', 'jkmccfw_woo_reset', 'jkmccfw_key', 'jkmccfw_secret', 'jkmccfw_theme', 'jkmccfw_selected_payment_methods', 'jkmccfw_tested', 'jkmccfw_activation_redirect', 'active_sitewide_plugins');

