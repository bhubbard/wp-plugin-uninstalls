#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'summaraize_openai_api_key'
wp option delete 'summaraize_post_types'
wp option delete 'summaraize_google_gemini_api_key'
wp option delete 'summaraize_oneclick_license'
wp option delete 'summaraize_ai_provider'
wp option delete 'summaraize_widget_title'
wp option delete 'summaraize_display_position'
wp option delete 'summaraize_display_mode'
wp option delete 'summaraize_button_style'
wp option delete 'summaraize_button_color'
wp option delete 'summaraize_list_type'
wp option delete 'summaraize_ai_model'

# Delete Transients
wp transient delete 'summaraize_gemini_api_key_valid'
wp transient delete 'summaraize_openai_models'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_override_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_override_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_override_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_override_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_widget_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_widget_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_widget_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_widget_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_button_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_button_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_button_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_button_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_button_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_button_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_button_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_button_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summaraize_list_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summaraize_list_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summaraize_list_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summaraize_list_type'"
