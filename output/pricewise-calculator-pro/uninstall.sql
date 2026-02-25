-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwcp_last_settings_export', 'pwcp_general_settings', 'pwcp_design_settings', 'pwcp_calculation_settings', 'pwcp_text_settings', 'pwcp_advanced_settings', 'pwcp_uninstall_delete_data', 'pwcp_uninstall_settings_exported', 'pwcp_activation_time', 'pwcp_plugin_version', 'pwcp_db_version', 'pwcp_enable_calculation_logging', 'pwcp_deactivation_time', 'pwcp_column_migration_completed', 'pwcp_uninstall_notice_dismissed', 'pwcp_data_preserved_on', 'pwcp_import_export_notice', 'pwcp_uninstall_preference_saved');
DELETE FROM wp_options WHERE option_name LIKE 'pwcp_category_assignments_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pwcp_calculator_view', '_pwcp_assigned_calculators', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('pwcp_calculator_view', '_pwcp_assigned_calculators', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('pwcp_calculator_view', '_pwcp_assigned_calculators', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pwcp_calculator_view', '_pwcp_assigned_calculators', '_price');

