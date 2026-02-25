-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gastrosite_reservation_id', 'gastrosite_reservation_language', 'gastrosite_reservation_show_header', 'gastrosite_reservation_color', 'gastrosite_reservation_button_text', 'gastrosite_reservation_button_size', 'gastrosite_reservation_button_color', 'gastrosite_reservation_z_index', 'gastrosite_reservation_button_position');

