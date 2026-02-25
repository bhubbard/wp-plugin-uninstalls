-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s123-invoices', 'woocommerce_price_num_decimals');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_i123_invoice_type', '_i123_invoice_language', '_stock', '_stock_status', '_backorders');
DELETE FROM wp_usermeta WHERE meta_key IN ('_i123_invoice_type', '_i123_invoice_language', '_stock', '_stock_status', '_backorders');
DELETE FROM wp_termmeta WHERE meta_key IN ('_i123_invoice_type', '_i123_invoice_language', '_stock', '_stock_status', '_backorders');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_i123_invoice_type', '_i123_invoice_language', '_stock', '_stock_status', '_backorders');

