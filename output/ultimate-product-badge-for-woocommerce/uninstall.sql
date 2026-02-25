-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'ultimate_product_badge_for_woocommerce_do_activation_redirect', 'ultimate_product_badge_for_woocommerce');

