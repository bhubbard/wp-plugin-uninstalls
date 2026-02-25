-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sueva_theme_settings', 'woocommerce_shop_page_id');

