-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'md_shipment_outside_ue', 'md_packaging_weight', 'md_calculate_shipping_before_coupon', 'md_api_key', 'md_log', 'woocommerce_email_footer_text', 'md_contracts_edition', 'md_company_name', 'md_complete_name', 'md_address', 'md_address_2', 'md_postal_box', 'md_zip_code', 'md_city', 'md_phone', 'md_shipment_type', 'md_default_hscode', 'md_default_country', 'md_default_fee', 'woocommerce_store_address_2', 'md_vat_number', 'woocommerce_store_address', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_default_country', 'md_uk_eori');
DELETE FROM wp_options WHERE option_name LIKE 'md_label_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes');

