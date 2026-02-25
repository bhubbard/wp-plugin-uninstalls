-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_customize_presets_settings', 'gs_form_animate', 'gscusl-form-position', 'gs_logo', 'gs_logo_width', 'gs_logo_height', 'gs_logo_hide', 'gs_logo_padding', 'gs_bg_image', 'gs_bg_color', 'gs_bg_repeat', 'gs_background_position', 'gs_bg_size', 'gs_back_hide', 'gs_form_bg_image', 'gs_form_bg_position', 'gs_form_bg_repeat', 'gs_form_bg_size', 'gs_form_bg_color', 'gs_form_width', 'gs_form_height', 'gs_form_padding', 'gs_form_font_sizes', 'gs_form_border_color', 'gs_form_border_thick', 'gs_form_border_style', 'gs_form_border_radius', 'gs_field_width', 'gs_field_margin', 'gs_field_bg', 'gs_field_color', 'gs_field_label', 'gs_field_border_color', 'gs_form_field_border_thick', 'gs_form_field_border_style', 'gs_button_color', 'gs_button_bg', 'gs_button_border', 'gs_button_hover_color', 'gs_button_hover_bg', 'gs_button_hover_border', 'gs_other_color', 'gs_other_color_hover', 'gs_footer_display_text', 'gs_back_display_text', 'gs_other_css', 'gs_logo_title', 'gs_logo_url', 'gscusl-login-icons', 'gs_login_footer_text');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

