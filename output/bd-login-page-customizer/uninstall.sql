-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdplpc_background_color', 'bdplpc_bg_image_url', 'bdplpc_logo_url', 'bdplpc_form_background_color', 'bdplpc_header_url');

