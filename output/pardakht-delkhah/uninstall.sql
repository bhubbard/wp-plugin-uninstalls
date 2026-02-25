-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cupri_general_settings', '_cupri', 'cupri_redirect_after_activation_option', 'cupri_gateways_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_my_meta_value_key', '_cupri_fprice', '_cupri_result_code', '_cupri_gateway', '_cupri_currency', '_cupri_log', '_wpm_order_type', '_cupri_fields', '_cupri_fmobile', '_cupri_femail', '_sepehr2_digitalreceipt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_my_meta_value_key', '_cupri_fprice', '_cupri_result_code', '_cupri_gateway', '_cupri_currency', '_cupri_log', '_wpm_order_type', '_cupri_fields', '_cupri_fmobile', '_cupri_femail', '_sepehr2_digitalreceipt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_my_meta_value_key', '_cupri_fprice', '_cupri_result_code', '_cupri_gateway', '_cupri_currency', '_cupri_log', '_wpm_order_type', '_cupri_fields', '_cupri_fmobile', '_cupri_femail', '_sepehr2_digitalreceipt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_my_meta_value_key', '_cupri_fprice', '_cupri_result_code', '_cupri_gateway', '_cupri_currency', '_cupri_log', '_wpm_order_type', '_cupri_fields', '_cupri_fmobile', '_cupri_femail', '_sepehr2_digitalreceipt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

