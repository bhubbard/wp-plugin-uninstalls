-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admin_custom_font_version', 'admin_custom_font_family', 'admin_custom_font_size', 'admin_custom_font_weight');

