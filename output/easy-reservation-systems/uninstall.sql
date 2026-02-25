-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyresy_reservation_days', 'easyresy_reservation_time_slots', 'easyresy_reservation_max_people', 'easyresy_reservation_theme_color');

