-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_fields_billing', 'wc_fields_shipping', 'wc_fields_additional', 'thwcfe_sections', 'wooccm_billing', 'wooccm_shipping', 'wooccm_additional', 'wcpfc_field_configuration_data', 'wp_cpg_enable_conditional_payment_gateways', 'wp_cpg_is_not_first_time', 'wp_cpg_no_payment_gateways_message', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wccpg_or_groups', 'wccpg_payment_gateways', 'wccpg_is_payment_gateway_disabled', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('wccpg_or_groups', 'wccpg_payment_gateways', 'wccpg_is_payment_gateway_disabled', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('wccpg_or_groups', 'wccpg_payment_gateways', 'wccpg_is_payment_gateway_disabled', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wccpg_or_groups', 'wccpg_payment_gateways', 'wccpg_is_payment_gateway_disabled', '_sku');

