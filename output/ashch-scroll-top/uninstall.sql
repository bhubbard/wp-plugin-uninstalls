-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scrltop_enable_button', 'scrltop_button_color', 'scrltop_arrow_color', 'scrltop_arrow', 'scrltop_form_button', 'scrltop_start_scrolling', 'scrltop_position_button', 'scrltop_position_button_left', 'scrltop_position_button_right', 'scrltop_position_button_bottom');

