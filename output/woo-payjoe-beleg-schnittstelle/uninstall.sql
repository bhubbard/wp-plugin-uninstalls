-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payjoe_zugangsid', 'payjoe_username', 'payjoe_apikey', 'payjoe_log', 'payjoe_interval', 'payjoe_startrenr', 'payjoe_invoice_options', 'payjoe_transfer_count', 'payjoe_start_order_date', 'wp_wc_running_invoice_number_prefix', 'wp_wc_running_invoice_number_suffix', 'wp_wc_running_invoice_number_prefix_refund', 'wp_wc_running_invoice_number_suffix_refund');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payjoe_invoice_number', '_payjoe_status', '_payjoe_error', '_payjoe_invoice_id', '_payjoe_invoice_date', '_payjoe_invoices', '_wp_wc_running_invoice_number', '_wp_wc_running_invoice_number_date', '_refund_amount', '_payjoe_invoice_string');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payjoe_invoice_number', '_payjoe_status', '_payjoe_error', '_payjoe_invoice_id', '_payjoe_invoice_date', '_payjoe_invoices', '_wp_wc_running_invoice_number', '_wp_wc_running_invoice_number_date', '_refund_amount', '_payjoe_invoice_string');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payjoe_invoice_number', '_payjoe_status', '_payjoe_error', '_payjoe_invoice_id', '_payjoe_invoice_date', '_payjoe_invoices', '_wp_wc_running_invoice_number', '_wp_wc_running_invoice_number_date', '_refund_amount', '_payjoe_invoice_string');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payjoe_invoice_number', '_payjoe_status', '_payjoe_error', '_payjoe_invoice_id', '_payjoe_invoice_date', '_payjoe_invoices', '_wp_wc_running_invoice_number', '_wp_wc_running_invoice_number_date', '_refund_amount', '_payjoe_invoice_string');

