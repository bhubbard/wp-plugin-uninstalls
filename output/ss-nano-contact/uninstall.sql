-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'ss-nano-contact', 'wp_plugin_dependencies_deactivate_plugins', 'wp_plugin_dependencies_plugin_data');

