-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_groups', 'plugin_groups_match', 'groups_plugin_match', 'plugin_locked', 'plugin_hidden', '_plugin-manager_', 'PIGPR_VERSION_NUM', 'update_plugins');

