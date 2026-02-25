-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_dash_message', 'wp_dash_message_network', 'wp_remove_site_widgets', 'wp_remove_network_widgets', 'wp_remove_site_widgets_N', 'wp_remove_global_widgets');

