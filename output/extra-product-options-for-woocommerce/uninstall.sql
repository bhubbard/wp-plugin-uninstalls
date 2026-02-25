-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epofw_view_preference', 'epofw_row_association_migration_done', 'epofw_custom_table_migration_complete', 'epofw_custom_table_migration_total', 'epofw_custom_table_migration_count', 'epofw_enable_logging', 'epofw_install_date', 'epofw_custom_tables_version', 'epofw_demo_addons_imported', 'epofw_pending_demo_import', 'epofw_migration_count', 'epofw_general_data', 'epofw_migration_304', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'epofw_custom_table_migration_completed_at', 'epofw_layout_type_migration_done', 'epofw_row_groups_cleanup_done', 'epofw_columns_groups_migration_complete', 'epofw_use_custom_tables', 'woocommerce_tax_display_shop', 'woocommerce_currency_pos', 'woocommerce_tax_display_cart', 'woocs', 'epofw_global_settings', 'epofw_custom_table_migration_running', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('epofw_mgr_status', 'epofw_review_notice_dismissed', 'epofw_migrated_to_custom_tables', 'epofw_prd_opt_data', 'migration_complete', 'epofw_migrated_to_tables');
DELETE FROM wp_usermeta WHERE meta_key IN ('epofw_mgr_status', 'epofw_review_notice_dismissed', 'epofw_migrated_to_custom_tables', 'epofw_prd_opt_data', 'migration_complete', 'epofw_migrated_to_tables');
DELETE FROM wp_termmeta WHERE meta_key IN ('epofw_mgr_status', 'epofw_review_notice_dismissed', 'epofw_migrated_to_custom_tables', 'epofw_prd_opt_data', 'migration_complete', 'epofw_migrated_to_tables');
DELETE FROM wp_commentmeta WHERE meta_key IN ('epofw_mgr_status', 'epofw_review_notice_dismissed', 'epofw_migrated_to_custom_tables', 'epofw_prd_opt_data', 'migration_complete', 'epofw_migrated_to_tables');

