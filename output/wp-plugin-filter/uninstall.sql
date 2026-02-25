-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpf_plugins_to_hide', 'wpf_hidden_tab_position', 'wpf_hide_unused_plugin_status');

