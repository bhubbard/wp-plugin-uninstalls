-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eaee_plugin_version', 'eaee_do_onboarding_redirect', 'eaee_enable_shipped_status', 'eaee_auto_packed_active', 'eaee_enable_shipped_email', 'eaee_after_update_notice', 'eaee_license_id', '_transient_eaee_customer_data_cache', '_site_transient_eaee_customer_data_cache', 'eaee_shipped_email_message', 'eaee_status_shipped_bg', 'eaee_status_shipped_text', 'eaee_status_packed_bg', 'eaee_status_packed_text', 'eaee_default_shipping_integration', 'eaee_shipping_company', 'eaee_invoice_trigger', 'eaee_dash_stats_index', 'eaee_log_tracking_enabled', 'eafatura_uuid', 'eaee_yurtici_normal_saved', 'eaee_yurtici_tahsilatli_saved', 'eaee_aras_normal_saved', 'eaee_aras_tahsilatli_saved', 'eaee_mng_normal_saved', 'woocommerce_email_footer_text', 'eaee_cache_buster', 'eaee_customer_data_cache', 'eaee_last_api_update_time', 'eaee_manual_action_notice');
DELETE FROM wp_options WHERE option_name LIKE 'eaee_%';
DELETE FROM wp_options WHERE option_name LIKE '%_saved';
DELETE FROM wp_options WHERE option_name LIKE 'eaee_legacy_snapshot_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eaee_tax_rate');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eaee_tax_rate');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eaee_tax_rate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eaee_tax_rate');

