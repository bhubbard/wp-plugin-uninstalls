-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lmp_box_title', 'lmp_title_alignment', 'lmp_title_font_size', 'lmp_number_of_links', 'lmp_bg_color', 'lmp_border_color', 'lmp_link_color', 'lmp_hover_link_color', 'lmp_link_icon', 'lmp_border_thickness', 'lmp_link_right_padding', 'lmp_link_left_padding', 'lmp_tl_corner_radius', 'lmp_tr_corner_radius', 'lmp_bl_corner_radius', 'lmp_br_corner_radius', 'lmp_padding', 'lmp_horizontal_shadow', 'lmp_shadow_size', 'lmp_vertical_shadow', 'lmp_shadow_color', 'lmp_icon_top_position', 'lmp_icon_left_position', 'lmp_post_cat', 'lmp_random_post', 'lmp_title_bottom_margin', 'lmp_title_color', 'lmp_link_alignment', 'lmp_link_right_margin', 'lmp_link_left_margin');

