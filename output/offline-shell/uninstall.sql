-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('offline_shell_enabled', 'offline_shell_debug', 'offline_shell_race_enabled', 'offline_shell_files', 'offline_shell_version');

