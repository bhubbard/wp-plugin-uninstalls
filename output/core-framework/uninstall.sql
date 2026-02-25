-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('core_framework_main', 'core_framework_bricks_license_key', 'core_framework_selected_preset_backup', 'core_framework_oxygen_license_key', 'core_framework_colors', 'core_framework_editor_prefixed_css', 'core_framework_grouped_classes', 'core_framework_oxygen_css_helper', 'core_framework_db_version', 'core-framework-update-notice', 'core_framework_updated', 'core_framework_updated_time');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';

