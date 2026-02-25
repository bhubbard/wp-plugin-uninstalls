-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipit_do_activation_redirect', 'shipit_user', 'shipit_token', 'shipit_account_country', 'shipit_plugin_redirect', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_shipit_settings', 'shipit_seccond_setting', 'shipit_db_tables_verify ', 'shipit_auth', 'shipit_db_tables_verify', 'shipit_communes_loaded', 'shipit_webhook', 'wc_fields_billing', 'wooccm_billing', 'shipit_migration', 'shipit_webhook_integration');

