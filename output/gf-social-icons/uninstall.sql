-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_social_icons_position_horizontally', 'gf_social_icons_general_settings', 'gf_social_icons_open_in_new_tab_settings', 'gf_social_icons_styles_setting');

