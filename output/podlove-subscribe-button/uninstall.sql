-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('podlove_subscribe_button_default_size', 'podlove_subscribe_button_default_style', 'podlove_subscribe_button_default_format', 'podlove_subscribe_button_default_color', 'podlove_subscribe_button_default_autowidth', 'podlove_subscribe_button_plugin_database_version');
DELETE FROM wp_options WHERE option_name LIKE 'podlove_subscribe_button_default_%';

