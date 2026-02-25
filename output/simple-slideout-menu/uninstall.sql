-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simsm_hide_desktop', 'simsm_hide_tablet', 'simsm_hide_mobile', 'simsm_panel_bg', 'simsm_panel_shadow_color', 'simsm_close_icon_font_size', 'simsm_close_icon_hover_color', 'simsm_close_icon_color', 'simsm_panel_width', 'simsm_hamburger_icon_font_size', 'simsm_hamburger_icon_hover_color', 'simsm_hamburger_icon_color', 'simsm_menu_link_color', 'simsm_menu_link_hover_color', 'simsm_menu_link_font_size', 'simsm_menu_link_text_decoration', 'simsm_menu_link_text_transformation', 'simsm_menu_link_font_weight');

