-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_swiss_qr_bill_may_deactivate', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'woocommerce_store_city');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsqb_activate_gateway', '_sqb_notice_dismissed', '_wsqb_gateway_data', '_wsqb_invoice_pdf_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsqb_activate_gateway', '_sqb_notice_dismissed', '_wsqb_gateway_data', '_wsqb_invoice_pdf_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsqb_activate_gateway', '_sqb_notice_dismissed', '_wsqb_gateway_data', '_wsqb_invoice_pdf_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsqb_activate_gateway', '_sqb_notice_dismissed', '_wsqb_gateway_data', '_wsqb_invoice_pdf_path');

