-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pricing_type', 'general_price', '_price', 'hourly_price', 'rnb_lite_availability', 'redq_attributes', 'redq_additional_features', 'redq_all_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('pricing_type', 'general_price', '_price', 'hourly_price', 'rnb_lite_availability', 'redq_attributes', 'redq_additional_features', 'redq_all_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('pricing_type', 'general_price', '_price', 'hourly_price', 'rnb_lite_availability', 'redq_attributes', 'redq_additional_features', 'redq_all_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pricing_type', 'general_price', '_price', 'hourly_price', 'rnb_lite_availability', 'redq_attributes', 'redq_additional_features', 'redq_all_data');

