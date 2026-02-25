-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dropkick_jquery_selectors', 'dropkick_mobile_device_support', 'dropkick_ie8_support');

