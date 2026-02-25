-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('softinn_hotel_id', 'softinn_theme_color', 'softinn_theme_color_temp', 'softinn_admin_nonce');

