-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quaderno_dismiss_review', 'woocommerce_tax_based_on', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_shipping_tax_class', 'woocommerce_tax_display_cart', 'quaderno_error', 'last_tax_class');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook', '_quaderno_contact', 'billing_tax_id', '_quaderno_vat_number', '_quaderno_tax_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook', '_quaderno_contact', 'billing_tax_id', '_quaderno_vat_number', '_quaderno_tax_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook', '_quaderno_contact', 'billing_tax_id', '_quaderno_vat_number', '_quaderno_tax_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook', '_quaderno_contact', 'billing_tax_id', '_quaderno_vat_number', '_quaderno_tax_id');

