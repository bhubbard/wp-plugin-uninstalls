-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yandexid_app_client_id', 'yandexid_type_selection', 'suggest_button_view', 'suggest_parent_id', 'suggest_button_theme', 'suggest_button_size', 'suggest_button_border_radius', 'suggest_color_bg_base', 'suggest_color_bg_hovered', 'suggest_color_border_base', 'suggest_color_border_hovered', 'suggest_border_thickness', 'yandexid_app_client_secret', 'yandexid_role_new_user', 'scope_login_default_phone_field', 'scope_login_birthday_field');

