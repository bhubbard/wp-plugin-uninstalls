-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invoice_link_woocommerce_view_invoice_text', 'invoice_link_woocommerce_custom_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_invoice_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_invoice_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_invoice_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_invoice_url');

