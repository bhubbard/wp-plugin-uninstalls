-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'woocommerce_logs_logging_enabled', 'woocommerce_bacs_accounts', 'woocommerce_prices_include_tax', 'woocommerce_shipping_tax_class', 'woocommerce_tax_based_on', 'wc_tax_rates_backup', 'aruba_fe_wc_tax_rates_classes_backup', 'aruba_fe_wc_tax_rates_backup', 'wc_tax_rates_classes_backup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_customer_type_aruba_fe', '_billing_need_invoice_aruba_fe', '_aruba_fe_order_id', '_aruba_fe_order_number', '_aruba_fe_order_status', '_aruba_fe_invoices', '_aruba_fe_drafts', '_aruba_fe_has_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_customer_type_aruba_fe', '_billing_need_invoice_aruba_fe', '_aruba_fe_order_id', '_aruba_fe_order_number', '_aruba_fe_order_status', '_aruba_fe_invoices', '_aruba_fe_drafts', '_aruba_fe_has_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_customer_type_aruba_fe', '_billing_need_invoice_aruba_fe', '_aruba_fe_order_id', '_aruba_fe_order_number', '_aruba_fe_order_status', '_aruba_fe_invoices', '_aruba_fe_drafts', '_aruba_fe_has_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_customer_type_aruba_fe', '_billing_need_invoice_aruba_fe', '_aruba_fe_order_id', '_aruba_fe_order_number', '_aruba_fe_order_status', '_aruba_fe_invoices', '_aruba_fe_drafts', '_aruba_fe_has_error');

