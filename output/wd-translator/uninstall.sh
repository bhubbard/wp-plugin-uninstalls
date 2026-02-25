#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wd_translator_enabled_languages'
wp option delete 'wd_translator_translation_provider'
wp option delete 'wd_translator_enabled'
wp option delete 'wd_translator_google_api_key'
wp option delete 'wd_translator_openai_api_key'
wp option delete 'wd_translator_openai_model'
wp option delete 'wd_translator_source_language'
wp option delete 'wd_translator_widget_style'
wp option delete 'wd_translator_widget_position'
wp option delete 'wd_translator_show_flags'
wp option delete 'wd_translator_language_display'
wp option delete 'wd_translator_font_size'
wp option delete 'wd_translator_border_radius'
wp option delete 'wd_translator_shadow'
wp option delete 'wd_translator_bg_color'
wp option delete 'wd_translator_text_color'
wp option delete 'wd_translator_border_color'
wp option delete 'wd_translator_hover_bg_color'
wp option delete 'wd_translator_active_bg_color'
wp option delete 'wd_translator_cache_enabled'
wp option delete 'wd_translator_cache_ttl'
wp option delete 'wd_translator_db_version'
wp option delete 'wd_translator_language_customizations'

