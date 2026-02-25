-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authora_sms_driver', 'authora_smsir_api_key', 'authora_smsir_template_id', 'authora_farazsms_api_key', 'authora_farazsms_pattern_code', 'authora_farazsms_sender_number', 'authora_shahvar_api_key', 'authora_shahvar_sender_number', 'authora_shahvar_pattern_code', 'authora_enable_mobile_login', 'authora_enable_woo_mobile_login');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mobile', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('mobile', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('mobile', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mobile', '_wp_page_template');

