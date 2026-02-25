-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'wpm_site_language', 'wpm_use_redirect', 'wpm_use_prefix', 'wpm_show_untranslated_strings', 'wpm_uninstall_translations', 'wpm_languages', 'active_sitewide_plugins', 'splash_ws_user', 'splash_ws_id', 'splash_ws_key', 'woocommerce_prices_include_tax', 'woocommerce_calc_taxes', 'splash_multilang', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE 'splash_cf_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_anonymized', '_thumbnail_id', '_wcpdf_invoice_number', '_sku', '_stock', 'billing_company', 'billing_address_1', 'billing_address_2', 'first_name', 'last_name', '_product_attributes', 'attribute_variant');
DELETE FROM wp_usermeta WHERE meta_key IN ('_anonymized', '_thumbnail_id', '_wcpdf_invoice_number', '_sku', '_stock', 'billing_company', 'billing_address_1', 'billing_address_2', 'first_name', 'last_name', '_product_attributes', 'attribute_variant');
DELETE FROM wp_termmeta WHERE meta_key IN ('_anonymized', '_thumbnail_id', '_wcpdf_invoice_number', '_sku', '_stock', 'billing_company', 'billing_address_1', 'billing_address_2', 'first_name', 'last_name', '_product_attributes', 'attribute_variant');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_anonymized', '_thumbnail_id', '_wcpdf_invoice_number', '_sku', '_stock', 'billing_company', 'billing_address_1', 'billing_address_2', 'first_name', 'last_name', '_product_attributes', 'attribute_variant');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';

