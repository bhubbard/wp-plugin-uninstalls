-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcfwc_key', 'rcfwc_secret', 'rcfwc_theme', 'rcfwc_login', 'rcfwc_register', 'rcfwc_reset', 'rcfwc_woo_checkout', 'rcfwc_guest_only', 'rcfwc_woo_login', 'rcfwc_woo_register', 'rcfwc_woo_reset', 'rcfwc_selected_payment_methods', 'rcfwc_woo_checkout_pos', 'rcfwc_scripts_all', 'rcfwc_tested', 'rcfwc_do_activation_redirect');

