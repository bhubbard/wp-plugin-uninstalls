-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpth_settings', 'active_sitewide_plugins', 'woocommerce_product_category_slug');

