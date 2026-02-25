-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'clp_build_package', 'customizer_login_page_settings', 'awp_login_logo', 'awp_login_logo_width', 'awp_login_logo_height', 'awp_login_logo_padding', 'awp_login_bg_image', 'awp_login_customizer_bg_color', 'awp_login_customizer_form_bg_image', 'awp_login_customizer_form_bg_color', 'awp_login_customizer_form_width', 'awp_login_customizer_form_height', 'awp_login_customizer_form_padding', 'awp_login_customizer_form_border', 'awp_login_customizer_form_border_radius', 'awp_login_customizer_form_shadow', 'awp_login_customizer_form_bg_opacity', 'awp_login_customizer_field_width', 'awp_login_customizer_field_margin', 'awp_login_customizer_field_bg', 'awp_login_customizer_field_color', 'awp_login_customizer_field_label', 'awp_login_customizer_button_bg', 'awp_login_customizer_button_border', 'awp_login_customizer_button_shadow', 'awp_login_customizer_button_color', 'awp_login_customizer_button_hover_bg', 'awp_login_customizer_button_hover_border', 'awp_login_customizer_form_footer_color', 'awp_login_customizer_form_footer_color_hover', 'awp_login_customizer_other_css', 'lpc_login_page_id', 'lpc_opts', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

