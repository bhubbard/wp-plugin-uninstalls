-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tp_tooltip_speed', 'tp_tooltip_width', 'tp_tooltip_delay', 'tp_tooltip_bgcolor', 'tp_tooltip_color', 'tp_tooltip_position', 'tp_tooltip_display');

