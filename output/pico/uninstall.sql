-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pico_publisher_id', 'pico_api_key ', 'pico_api_key', 'pico_widget_version', 'pico_gadget_version');

