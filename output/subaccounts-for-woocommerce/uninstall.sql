-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfwc_plugin_info', 'sfwc_options', 'sfwc_switcher_appearance', 'woocommerce_myaccount_subaccounts_endpoint', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_myaccount_page_id', 'sfwc_flush_rewrite_rules_required', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'sfwc_is_or_was_supervisor_%';
DELETE FROM wp_options WHERE option_name LIKE 'sfwc_is_or_was_manager_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfwc_account_level_type', 'sfwc_children', 'billing_company', 'first_name', 'last_name', 'billing_first_name', 'billing_last_name', 'billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfwc_account_level_type', 'sfwc_children', 'billing_company', 'first_name', 'last_name', 'billing_first_name', 'billing_last_name', 'billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfwc_account_level_type', 'sfwc_children', 'billing_company', 'first_name', 'last_name', 'billing_first_name', 'billing_last_name', 'billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfwc_account_level_type', 'sfwc_children', 'billing_company', 'first_name', 'last_name', 'billing_first_name', 'billing_last_name', 'billing_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country';

