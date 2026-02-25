-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fast_cart_option', 'fast_cart_option_styling', 'fast_cart_license', 'fast_cart_upgrade_completed', 'woocommerce_tax_total_display');

