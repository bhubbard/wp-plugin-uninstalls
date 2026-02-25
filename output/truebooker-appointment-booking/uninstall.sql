-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('truebooker_db_version', 'truebooker_skin_color', 'truebooker_dark_color', 'truebooker_body_color', 'truebooker_white_color', 'truebooker_black_color', 'truebooker_cl_lightdark', 'truebooker_gray_color', 'truebooker_border_color', 'truebooker_active_skin', 'truebooker_font_family');

