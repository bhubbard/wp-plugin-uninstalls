-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimate-db-skip-premium', 'ultimate_db_manager_global_settings', 'ultimate_db_global_settings');

