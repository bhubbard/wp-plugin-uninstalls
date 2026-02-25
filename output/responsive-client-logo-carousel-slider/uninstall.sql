-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'slc_import_ver', 'slc_imported');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ba_width', 'ba_height', 'ba_re_', 'ba_speed', 'ba_behavior', 'ba_mouse_direction', 'ba_padding', 'ba_boarder_size', 'ba_boarder_color', 'ba_bg_color', 'ba_');
DELETE FROM wp_usermeta WHERE meta_key IN ('ba_width', 'ba_height', 'ba_re_', 'ba_speed', 'ba_behavior', 'ba_mouse_direction', 'ba_padding', 'ba_boarder_size', 'ba_boarder_color', 'ba_bg_color', 'ba_');
DELETE FROM wp_termmeta WHERE meta_key IN ('ba_width', 'ba_height', 'ba_re_', 'ba_speed', 'ba_behavior', 'ba_mouse_direction', 'ba_padding', 'ba_boarder_size', 'ba_boarder_color', 'ba_bg_color', 'ba_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ba_width', 'ba_height', 'ba_re_', 'ba_speed', 'ba_behavior', 'ba_mouse_direction', 'ba_padding', 'ba_boarder_size', 'ba_boarder_color', 'ba_bg_color', 'ba_');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

