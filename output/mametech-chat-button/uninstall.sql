-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mametech_cb_phone_number', 'mametech_cb_enabled', 'mametech_cb_message', 'mametech_cb_position', 'mametech_cb_button_size', 'mametech_cb_theme', 'mametech_cb_schedule_enabled', 'mametech_cb_schedule_hours', 'mametech_cb_enable_stats', 'mametech_cb_tooltip_text', 'mametech_cb_show_tooltip', 'mametech_cb_multiple_menu_text', 'mametech_cb_multiple_numbers');

