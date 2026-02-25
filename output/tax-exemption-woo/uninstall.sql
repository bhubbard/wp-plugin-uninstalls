-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'tefw_settings', 'tefw_flush_rewrite_rules', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'tefw_admin_selected_customer_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tefw_exempt_status', 'tefw_exempt', 'tefw_exempt_name', 'tefw_exempt_reason', 'tefw_exempt_file', 'tefw_exempt_product', 'tax_exemption', 'tefw_exempt_statecity', 'tefw_exempt_expiration');
DELETE FROM wp_usermeta WHERE meta_key IN ('tefw_exempt_status', 'tefw_exempt', 'tefw_exempt_name', 'tefw_exempt_reason', 'tefw_exempt_file', 'tefw_exempt_product', 'tax_exemption', 'tefw_exempt_statecity', 'tefw_exempt_expiration');
DELETE FROM wp_termmeta WHERE meta_key IN ('tefw_exempt_status', 'tefw_exempt', 'tefw_exempt_name', 'tefw_exempt_reason', 'tefw_exempt_file', 'tefw_exempt_product', 'tax_exemption', 'tefw_exempt_statecity', 'tefw_exempt_expiration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tefw_exempt_status', 'tefw_exempt', 'tefw_exempt_name', 'tefw_exempt_reason', 'tefw_exempt_file', 'tefw_exempt_product', 'tax_exemption', 'tefw_exempt_statecity', 'tefw_exempt_expiration');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tefw_exempt_custom_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tefw_exempt_custom_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tefw_exempt_custom_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tefw_exempt_custom_%';

