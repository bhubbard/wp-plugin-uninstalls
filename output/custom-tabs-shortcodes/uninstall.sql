-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cts_config', 'cts_color_defaults', 'cts_lunes', 'cts_martes', 'cts_miercoles', 'cts_jueves', 'cts_viernes', 'cts_sabado', 'cts_domingo', 'cts_icons', 'cts_delete');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('td_colors', 'td_data', 'td_options', 'td_is_daily');
DELETE FROM wp_usermeta WHERE meta_key IN ('td_colors', 'td_data', 'td_options', 'td_is_daily');
DELETE FROM wp_termmeta WHERE meta_key IN ('td_colors', 'td_data', 'td_options', 'td_is_daily');
DELETE FROM wp_commentmeta WHERE meta_key IN ('td_colors', 'td_data', 'td_options', 'td_is_daily');

