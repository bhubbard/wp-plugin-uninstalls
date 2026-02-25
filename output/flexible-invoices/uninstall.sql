-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'inspire_invoices_invoice_start_number', 'woocommerce_default_country', 'wpdesk_helper_options', 'wpdesk_tracker_skip_flexible_invoices_woocommerce', 'wpdesk_tracker_notice', 'inspire_invoices_gutenberg_editor', 'inspire_invoices_currency', 'inspire_invoices_tax', 'inspire_invoices_default_values', 'inspire_invoices_currency_woo_updated', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'inspire_invoices_tax_updated', 'inspire_invoices_settings_upgrade', 'flexible-invoices-register-strings', 'flexible-invoices-register-woocommerce-strings', 'flexible-invoices-load-translations', 'flexible-invoices-load-woocommerce-translations');
DELETE FROM wp_options WHERE option_name LIKE '%_reinstall_numbering';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('invoice_ask', 'vat_number', '_document_proforma_relation', '_document_correction_relation', 'template_enabled', '_type', '_correction', '_total_paid', '_payment_status', '_wc_order_id', 'wpdesk_fi_note', 'screen_layout_inspire_invoice', 'manageedit-inspire_invoicecolumnshidden', '_correction_generated');
DELETE FROM wp_usermeta WHERE meta_key IN ('invoice_ask', 'vat_number', '_document_proforma_relation', '_document_correction_relation', 'template_enabled', '_type', '_correction', '_total_paid', '_payment_status', '_wc_order_id', 'wpdesk_fi_note', 'screen_layout_inspire_invoice', 'manageedit-inspire_invoicecolumnshidden', '_correction_generated');
DELETE FROM wp_termmeta WHERE meta_key IN ('invoice_ask', 'vat_number', '_document_proforma_relation', '_document_correction_relation', 'template_enabled', '_type', '_correction', '_total_paid', '_payment_status', '_wc_order_id', 'wpdesk_fi_note', 'screen_layout_inspire_invoice', 'manageedit-inspire_invoicecolumnshidden', '_correction_generated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('invoice_ask', 'vat_number', '_document_proforma_relation', '_document_correction_relation', 'template_enabled', '_type', '_correction', '_total_paid', '_payment_status', '_wc_order_id', 'wpdesk_fi_note', 'screen_layout_inspire_invoice', 'manageedit-inspire_invoicecolumnshidden', '_correction_generated');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email_send';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email_send';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email_send';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email_send';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_generated';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_generated';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_generated';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_generated';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_invoice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_invoice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_invoice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_invoice_%';

