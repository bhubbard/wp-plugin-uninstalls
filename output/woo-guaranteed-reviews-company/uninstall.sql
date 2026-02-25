-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_transient_weglot_cache_cdn', 'woocommerce_enable_reviews', 'woocommerce_enable_review_rating', 'wcsag_certificate_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpml_language', 'sp_wc_barcode_type_field', 'sp_wc_barcode_field', '_cpf_ean', '_wpm_gtin_code', '_gtin_product', '_gtin', 'gtin_product_variable', 'wpseo_variation_global_identifiers_values', '_upc', '_wcsag_rating', '_wcsag_custom_answers', '_wcsag_firstname', '_wcsag_lastname', '_wcsag_translated', '_wcsag_source_lang', '_wcsag_order_date', '_wcsag_answer_text', 'wcsag_notice_dismissed', '_wcsag_order_sent', '_weglot_language');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpml_language', 'sp_wc_barcode_type_field', 'sp_wc_barcode_field', '_cpf_ean', '_wpm_gtin_code', '_gtin_product', '_gtin', 'gtin_product_variable', 'wpseo_variation_global_identifiers_values', '_upc', '_wcsag_rating', '_wcsag_custom_answers', '_wcsag_firstname', '_wcsag_lastname', '_wcsag_translated', '_wcsag_source_lang', '_wcsag_order_date', '_wcsag_answer_text', 'wcsag_notice_dismissed', '_wcsag_order_sent', '_weglot_language');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpml_language', 'sp_wc_barcode_type_field', 'sp_wc_barcode_field', '_cpf_ean', '_wpm_gtin_code', '_gtin_product', '_gtin', 'gtin_product_variable', 'wpseo_variation_global_identifiers_values', '_upc', '_wcsag_rating', '_wcsag_custom_answers', '_wcsag_firstname', '_wcsag_lastname', '_wcsag_translated', '_wcsag_source_lang', '_wcsag_order_date', '_wcsag_answer_text', 'wcsag_notice_dismissed', '_wcsag_order_sent', '_weglot_language');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpml_language', 'sp_wc_barcode_type_field', 'sp_wc_barcode_field', '_cpf_ean', '_wpm_gtin_code', '_gtin_product', '_gtin', 'gtin_product_variable', 'wpseo_variation_global_identifiers_values', '_upc', '_wcsag_rating', '_wcsag_custom_answers', '_wcsag_firstname', '_wcsag_lastname', '_wcsag_translated', '_wcsag_source_lang', '_wcsag_order_date', '_wcsag_answer_text', 'wcsag_notice_dismissed', '_wcsag_order_sent', '_weglot_language');

