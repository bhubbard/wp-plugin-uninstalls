-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptfwp_backup_active_plugins', 'PROFILING_TOOL_FOR_WP_LANGUAGE', 'ptfwp_db_version', 'TBIWP_FREE_KEY');

