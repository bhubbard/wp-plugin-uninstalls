-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_plugin_deactivation', 'disable_plugin_activation', 'disable_plugin_deletion', 'disable_plugin_update');

