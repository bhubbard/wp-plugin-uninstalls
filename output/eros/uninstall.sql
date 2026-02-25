-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icon_size', 'textarea_width', 'textarea_rows', 'bullseye_field_name', 'config_option_textarea_width', 'config_option_textarea_rows', 'diagram_size');

