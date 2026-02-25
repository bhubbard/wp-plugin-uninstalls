-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwl_pin_it_button_settings', 'dwl_pin_it_activation_time', 'dwl_pin_it_version');

