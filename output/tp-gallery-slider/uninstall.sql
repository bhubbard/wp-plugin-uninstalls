-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tp_width', 'tp_height', 'tp_select_change', 'tp_display_alt', 'tp_description_position');

