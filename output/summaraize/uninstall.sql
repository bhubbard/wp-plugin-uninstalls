-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('summaraize_openai_api_key', 'summaraize_post_types', 'summaraize_google_gemini_api_key', 'summaraize_oneclick_license', 'summaraize_ai_provider', 'summaraize_widget_title', 'summaraize_display_position', 'summaraize_display_mode', 'summaraize_button_style', 'summaraize_button_color', 'summaraize_list_type', 'summaraize_ai_model', 'summaraize_gemini_api_key_valid', 'summaraize_openai_models');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('summaraize_points', 'summaraize_override_settings', 'summaraize_view', 'summaraize_mode', 'summaraize_widget_title', 'summaraize_button_style', 'summaraize_button_color', 'summaraize_list_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('summaraize_points', 'summaraize_override_settings', 'summaraize_view', 'summaraize_mode', 'summaraize_widget_title', 'summaraize_button_style', 'summaraize_button_color', 'summaraize_list_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('summaraize_points', 'summaraize_override_settings', 'summaraize_view', 'summaraize_mode', 'summaraize_widget_title', 'summaraize_button_style', 'summaraize_button_color', 'summaraize_list_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('summaraize_points', 'summaraize_override_settings', 'summaraize_view', 'summaraize_mode', 'summaraize_widget_title', 'summaraize_button_style', 'summaraize_button_color', 'summaraize_list_type');

