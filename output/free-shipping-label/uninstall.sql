-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipping_cost_requires_address', 'devnet_fsl_general', 'devnet_fsl_bar', 'devnet_fsl_gift_bar', 'devnet_fsl_notice_bar', 'devnet_fsl_label', 'devnet_fsl_multilingual_check', 'devnet_fsl_layout_check', 'devnet_fsl', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wafs_shipping_method_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wafs_shipping_method_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wafs_shipping_method_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wafs_shipping_method_conditions');

