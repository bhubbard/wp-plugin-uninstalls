-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('andy_show_installation_notice', 'andy_plugin_do_redirect', 'andy_plugin_activation_token', 'andy_injector_public', 'andy_injector_open_on_load', 'andy_injector_position', 'andy_injector_widget_size', 'andy_notice_dismissed', 'andy_injector_primary_color');
DELETE FROM wp_options WHERE option_name LIKE 'andy_contact_%';

