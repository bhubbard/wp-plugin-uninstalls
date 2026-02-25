-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', '_wcml_settings', 'salesafw_analytics_show_walkthrough', 'woocommerce_custom_orders_table_enabled', 'salesafw_redirect_on_activation');

