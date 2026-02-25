-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_from_address', 'woocommerce_email_from_name', 'woocommerce_postis_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('postis_shipment_pdf_printed', 'postis_shipping_method', 'postis_dpo_postbox', 'postis_dpo_phonenumber', 'postis_shipment_meta', 'hsTariffNumber', 'descriptionOfContents', 'postis_dpt_parcelpoints', 'postis_dpt_phonenumber', 'billing_kennitala');
DELETE FROM wp_usermeta WHERE meta_key IN ('postis_shipment_pdf_printed', 'postis_shipping_method', 'postis_dpo_postbox', 'postis_dpo_phonenumber', 'postis_shipment_meta', 'hsTariffNumber', 'descriptionOfContents', 'postis_dpt_parcelpoints', 'postis_dpt_phonenumber', 'billing_kennitala');
DELETE FROM wp_termmeta WHERE meta_key IN ('postis_shipment_pdf_printed', 'postis_shipping_method', 'postis_dpo_postbox', 'postis_dpo_phonenumber', 'postis_shipment_meta', 'hsTariffNumber', 'descriptionOfContents', 'postis_dpt_parcelpoints', 'postis_dpt_phonenumber', 'billing_kennitala');
DELETE FROM wp_commentmeta WHERE meta_key IN ('postis_shipment_pdf_printed', 'postis_shipping_method', 'postis_dpo_postbox', 'postis_dpo_phonenumber', 'postis_shipment_meta', 'hsTariffNumber', 'descriptionOfContents', 'postis_dpt_parcelpoints', 'postis_dpt_phonenumber', 'billing_kennitala');

