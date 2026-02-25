-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foxmetrics_analytics_settings', 'woocommerce_tax_display_cart');

