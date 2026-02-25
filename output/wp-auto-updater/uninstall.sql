-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_auto_updater_history_table_version', 'auto_update_core_major', 'wp_auto_updater/history_table/updated', 'wp_auto_updater/history_table/created', 'wp_auto_updater/upgraded_version', 'update_core');

