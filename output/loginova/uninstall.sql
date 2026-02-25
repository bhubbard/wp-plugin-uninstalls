-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plr_popup_timeout', 'plr_login_redirect', 'plr_logout_redirect', 'plr_login_fields', 'plr_register_fields', 'plr_required_login_fields', 'plr_required_register_fields', 'plr_terms_consent_link', 'plr_login_success_msg', 'plr_login_error_msg', 'plr_invalid_username_msg', 'plr_invalid_password_msg', 'plr_popup_width', 'plr_popup_height', 'plr_popup_bg_color', 'plr_input_bg_color', 'plr_input_text_color', 'plr_font_size', 'plr_border_color', 'plr_border_width', 'plr_button_bg_color', 'plr_button_text_color', 'plr_button_font_size', 'plr_button_font_weight', 'plr_button_width', 'plr_button_height', 'plr_button_border_width', 'plr_button_border_color', 'plr_button_border_radius', 'plr_button_position', 'plr_button_margin_top', 'plr_button_padding', 'plr_button_cursor', 'plr_terms_consent_text', 'plr_terms_consent_link_text', 'plr_terms_consent_error', 'plr_email_exists_msg', 'plr_popup_border_width', 'plr_popup_border_color', 'plr_popup_border_radius', 'plr_popup_box_shadow', 'plr_title_font_size', 'plr_title_font_color', 'plr_title_font_weight', 'plr_title_text_align', 'plr_title_margin_bottom', 'plr_input_width', 'plr_input_height', 'plr_input_font_size', 'plr_input_border_width');
DELETE FROM wp_options WHERE option_name IN ('plr_input_border_color', 'plr_input_border_radius', 'plr_input_margin_bottom', 'plr_input_padding', 'plr_button_hover_bg_color', 'plr_button_hover_text_color', 'plr_link_text_color', 'plr_link_hover_text_color', 'plr_link_text_decoration', 'plr_link_hover_text_decoration', 'plr_link_font_size', 'plr_popup_bg_image', 'plr_invalid_email_msg', 'plr_invalid_credentials_msg', 'plr_fields_required_msg', 'plr_passwords_not_match_msg', 'plr_username_exists_msg', 'plr_register_success_msg');
DELETE FROM wp_options WHERE option_name LIKE 'plr_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plr_terms_consent', 'plr_terms_consent_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('plr_terms_consent', 'plr_terms_consent_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('plr_terms_consent', 'plr_terms_consent_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plr_terms_consent', 'plr_terms_consent_date');

