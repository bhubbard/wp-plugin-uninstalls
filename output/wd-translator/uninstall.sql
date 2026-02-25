-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wd_translator_enabled_languages', 'wd_translator_translation_provider', 'wd_translator_enabled', 'wd_translator_google_api_key', 'wd_translator_openai_api_key', 'wd_translator_openai_model', 'wd_translator_source_language', 'wd_translator_widget_style', 'wd_translator_widget_position', 'wd_translator_show_flags', 'wd_translator_language_display', 'wd_translator_font_size', 'wd_translator_border_radius', 'wd_translator_shadow', 'wd_translator_bg_color', 'wd_translator_text_color', 'wd_translator_border_color', 'wd_translator_hover_bg_color', 'wd_translator_active_bg_color', 'wd_translator_cache_enabled', 'wd_translator_cache_ttl', 'wd_translator_db_version', 'wd_translator_language_customizations');

