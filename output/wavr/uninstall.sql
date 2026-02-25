-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wavr_default_server', 'wavr_default_bgcolor', 'wavr_default_color', 'wavr_default_font', 'wavr_default_font_size', 'wavr_default_width', 'wavr_default_height');

