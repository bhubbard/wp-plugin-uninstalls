-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpso_wp_scripts_array', 'wpso_wp_styles_array', 'wpso_db_version', 'wpso_added_scripts', 'wpso_handles_moved_down', 'wpso_plugins_status', 'wpso_current_theme', 'wpso_added_styles', 'wpso_deleted_scripts', 'wpso_deleted_styles');
DELETE FROM wp_options WHERE option_name LIKE 'wpso_deleted_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpso_added_%';

