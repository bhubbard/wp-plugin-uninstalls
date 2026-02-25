-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filesystem_unlocker_plugin_options', 'filesystem_unlocker_plugin_lock_state');

