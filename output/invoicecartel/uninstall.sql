-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scic_last_invoice_number', 'scic_default_currency', 'scic_business_name', 'scic_business_address_1', 'scic_business_address_2', 'scic_business_phone', 'scic_business_email', 'scic_business_website', 'scic_business_logo', 'scic_business_tax_id', 'scic_business_signature', 'scic_business_tax_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scic_customer_phone', 'scic_customer_company', 'scic_customer_billing_address', 'scic_customer_shipping_address', 'scic_customer_taxid', 'status', 'due_date', 'scic_company', 'unit_price', 'description', 'invoice_number', 'issue_date', 'customer_id', 'tax_rate', 'discount', 'subtotal', 'tax_amount', 'grand_total', 'line_items', 'currency', 'sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('scic_customer_phone', 'scic_customer_company', 'scic_customer_billing_address', 'scic_customer_shipping_address', 'scic_customer_taxid', 'status', 'due_date', 'scic_company', 'unit_price', 'description', 'invoice_number', 'issue_date', 'customer_id', 'tax_rate', 'discount', 'subtotal', 'tax_amount', 'grand_total', 'line_items', 'currency', 'sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('scic_customer_phone', 'scic_customer_company', 'scic_customer_billing_address', 'scic_customer_shipping_address', 'scic_customer_taxid', 'status', 'due_date', 'scic_company', 'unit_price', 'description', 'invoice_number', 'issue_date', 'customer_id', 'tax_rate', 'discount', 'subtotal', 'tax_amount', 'grand_total', 'line_items', 'currency', 'sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scic_customer_phone', 'scic_customer_company', 'scic_customer_billing_address', 'scic_customer_shipping_address', 'scic_customer_taxid', 'status', 'due_date', 'scic_company', 'unit_price', 'description', 'invoice_number', 'issue_date', 'customer_id', 'tax_rate', 'discount', 'subtotal', 'tax_amount', 'grand_total', 'line_items', 'currency', 'sku');

