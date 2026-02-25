-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsid_icon_size', 'bsid_input_height', 'bsid_icon_color', 'bsid_enable_icon_dropdown');

