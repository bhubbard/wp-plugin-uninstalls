-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lpc_feedback_dismissed', 'lpc_asked_feedback', 'lpc_accepted_cgv', 'lpc_jquery_warning_dismissed_notice', 'lpc_jquery_migrate_wp56_dismissed_notice', 'lpc_packagings', 'lpc_secured_return', 'lpc_current_credentials_tested', 'lpc_current_credentials_valid', 'woocommerce_store_address_2', 'woocommerce_store_address', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_email_footer_text', 'lpc_origin_company_name', 'lpc_parent_id_webservices', 'lpc_pickup_map_type', 'lpc_pwd_webservices', 'lpc_pwd_encrypted', 'lpc_no_shipping_class_updated', 'lpc_customers_download_return_label', 'lpc_relay_types', 'lpc_capabilities_per_country_fr', 'lpc_capabilities_per_country_dom1', 'lpc_capabilities_per_country', 'lpc_domiciless_IsAlwaysFree', 'lpc_domicileas_IsAlwaysFree', 'lpc_expert_IsAlwaysFree', 'lpc_relay_IsAlwaysFree', 'active_sitewide_plugins', 'woocommerce_myaccount_page_id', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'lpc_expert_%';
DELETE FROM wp_options WHERE option_name LIKE 'lpc_domicileas_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

