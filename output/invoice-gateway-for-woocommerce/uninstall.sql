-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('igfw_installed_by', 'wwp_installed_by', 'woocommerce_igfw_invoice_gateway_settings', 'igfw_enable_purchase_order_number', 'igfw_default_order_status');

