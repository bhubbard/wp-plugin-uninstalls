-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('counter_ecl_time', 'counter_ecl_time_message', 'counter_ecl', 'counter_ecl_message', 'counter_ecl_message_active', 'counter_ecl_color_text', 'counter_ecl_color_background', 'counter_ecl_effects', 'counter_ecl_position', 'counter_ecl_hide');

