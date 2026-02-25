-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('st_onoffswitch', 'st_sb_color', 'st_sb_width', 'st_sb_border_size', 'st_sb_border_style', 'st_sb_border_color', 'st_sb_border_radius', 'st_rail_color_opacity', 'st_onoffswitch_autohide', 'st_sb_speed', 'st_rail_align_switch', 'st_sb_active_opacity', 'st_sb_mouse_step', 'st_smothscroll_switch', 'st_bouncescroll_switch', 'st_mouse_switch');

