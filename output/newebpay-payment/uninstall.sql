-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_newebpay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_needUBN', '_billing_UBN', '_billing_invoiceFlag', '_billing_invoiceFlagNum', '_billing_Buyer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_needUBN', '_billing_UBN', '_billing_invoiceFlag', '_billing_invoiceFlagNum', '_billing_Buyer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_needUBN', '_billing_UBN', '_billing_invoiceFlag', '_billing_invoiceFlagNum', '_billing_Buyer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_needUBN', '_billing_UBN', '_billing_invoiceFlag', '_billing_invoiceFlagNum', '_billing_Buyer');

