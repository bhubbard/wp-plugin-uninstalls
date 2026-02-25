-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('megasend_woo_tracking_enabled', 'megasend_woo_abandonment_threshold', 'megasend_woo_onboarding_completed', 'megasend_woo_instance_id', 'megasend_woo_api_token', 'megasend_woo_gdpr_enabled', 'megasend_woo_gdpr_message', 'megasend_woo_delete_data_on_uninstall', 'megasend_woo_default_language', 'megasend_woo_db_version', 'megasend_woo_default_country_code', 'woocommerce_default_country', 'megasend_woo_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'megasend_woo_templates_%';

