#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is_active_domain'
wp option delete 'style_change_flag'
wp option delete 'style_change_language'
wp option delete 'api_key'
wp option delete 'source_language'
wp option delete 'target_languages'
wp option delete 'target_languages_translations'
wp option delete 'default_language'
wp option delete 'style_flag'
wp option delete 'style_text'
wp option delete 'style_position_vertical'
wp option delete 'style_position_horizontal'
wp option delete 'style_indenting_vertical'
wp option delete 'style_indenting_horizontal'
wp option delete 'auto_translate'
wp option delete 'hide_conveythis_logo'
wp option delete 'dynamic_translation'
wp option delete 'translate_media'
wp option delete 'translate_document'
wp option delete 'translate_links'
wp option delete 'translate_structured_data'
wp option delete 'change_direction'
wp option delete 'conveythis_clear_cache'
wp option delete 'conveythis_select_region'
wp option delete 'alternate'
wp option delete 'accept_language'
wp option delete 'blockpages'
wp option delete 'show_javascript'
wp option delete 'style_position_type'
wp option delete 'style_position_vertical_custom'
wp option delete 'style_selector_id'
wp option delete 'url_structure'
wp option delete 'style_background_color'
wp option delete 'style_hover_color'
wp option delete 'style_border_color'
wp option delete 'style_text_color'
wp option delete 'style_corner_type'
wp option delete 'custom_css_json'
wp option delete 'style_widget'
wp option delete 'conveythis_system_links'
wp option delete 'use_trailing_slash'
wp option delete 'is_translated'
wp option delete 'conveythis_new_user'
wp option delete 'no_translate_element_id'
wp option delete 'no_translate_element_classes'
wp option delete 'mb_admin_notice'

# Delete Transients
wp transient delete 'convey_permalink_structure'

# Clear Cron Jobs
wp cron event delete 'ConveyThisClearCache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convey_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convey_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convey_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convey_meta'"
