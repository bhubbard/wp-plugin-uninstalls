-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buidlo_logo_type', 'buidlo_logo', 'buidlo_logo_aspect_ratio', 'buidlo_background_color', 'buidlo_button_color');

