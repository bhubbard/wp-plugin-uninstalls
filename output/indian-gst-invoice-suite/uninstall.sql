-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_email_from_address', 'woocommerce_checkout_phone_field', 'woocommerce_default_country', 'woocommerce_tax_classes', 'woocommerce_calc_taxes', 'woocommerce_tax_based_on', 'indian_gst_restore_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_indian_gst_hsn_sac', '_tax_class', '_indian_gst_rate', '_indian_gst_model_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_indian_gst_hsn_sac', '_tax_class', '_indian_gst_rate', '_indian_gst_model_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_indian_gst_hsn_sac', '_tax_class', '_indian_gst_rate', '_indian_gst_model_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_indian_gst_hsn_sac', '_tax_class', '_indian_gst_rate', '_indian_gst_model_number');

