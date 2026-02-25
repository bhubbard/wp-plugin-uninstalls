-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tscp_plugin_enabled', 'tscp_disable_for_admins');

