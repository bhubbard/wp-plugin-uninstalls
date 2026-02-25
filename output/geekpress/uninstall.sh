#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geekp_PluginPress_User'
wp option delete 'geekp_PluginPress_Api_Key'
wp option delete 'geekp_PluginPress_Secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'geekp_PluginPress_Def_%'"
wp option delete 'geekp_api_key'
wp option delete 'geekp_post_types'
wp option delete 'rewrite_rules'
wp option delete 'geekp_custom_pages'
wp option delete 'geekp_custom_page_links'
wp option delete 'geekp_external_logos'
wp option delete 'geekp_selected_credits'
wp option delete 'geekp_lang'
wp option delete 'geekLang'
wp option delete 'geekp_rating_instead_imdb'
wp option delete 'geekp_rating_instead_igdb'
wp option delete 'geekp_publish_perm'
wp option delete 'geekp_Plugin_Version'
wp option delete 'geekp_PluginPress_Count'
wp option delete 'geekp_permalink_endpoints'
wp option delete 'geekp_permalink_roots'
wp option delete 'geekp_version'
wp option delete 'geekp_field_category'
wp option delete 'geekp_imageViewer'
wp option delete 'geekp_videoViewer'
wp option delete 'geekp_userIntegration'
wp option delete 'geekp_game_theme'
wp option delete 'geekp_theme'
wp option delete 'geekp_register_page'
wp option delete 'geekp_user_settings'
wp option delete 'geekp_user_permalink'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
