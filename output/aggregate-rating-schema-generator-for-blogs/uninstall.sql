-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('strpgn_apply_to', 'strpgn_star_color_empty', 'strpgn_star_color_filled', 'strpgn_star_color_hover', 'strpgn_container_alignment', 'strpgn_star_size', 'strpgn_average_font_size', 'strpgn_average_margin_top', 'strpgn_average_margin_right', 'strpgn_average_margin_bottom', 'strpgn_average_margin_left', 'strpgn_stars_margin_top', 'strpgn_stars_margin_right', 'strpgn_stars_margin_bottom', 'strpgn_stars_margin_left', 'strpgn_details_font_size', 'strpgn_total_margin_top', 'strpgn_total_margin_right', 'strpgn_total_margin_bottom', 'strpgn_total_margin_left');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('strpgn_hide_auto_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('strpgn_hide_auto_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('strpgn_hide_auto_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('strpgn_hide_auto_display');

