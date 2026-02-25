-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affililabs_cleanup_on_uninstall', 'affililabs_cleanup_pending', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_salt';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_affl_associated_comparison_table', 'custom_field_1', 'custom_field_1_name', '_affl_applied_table_ids', '_op3_ge_meta', '_affl_applied_template_id', '_affl_template_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_affl_associated_comparison_table', 'custom_field_1', 'custom_field_1_name', '_affl_applied_table_ids', '_op3_ge_meta', '_affl_applied_template_id', '_affl_template_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_affl_associated_comparison_table', 'custom_field_1', 'custom_field_1_name', '_affl_applied_table_ids', '_op3_ge_meta', '_affl_applied_template_id', '_affl_template_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_affl_associated_comparison_table', 'custom_field_1', 'custom_field_1_name', '_affl_applied_table_ids', '_op3_ge_meta', '_affl_applied_template_id', '_affl_template_data');

