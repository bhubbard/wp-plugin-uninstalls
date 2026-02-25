#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'livetv_activate_creation_role'
wp option delete 'livetv_defaut_role_wordpress'
wp option delete 'livetv_users_role_selected'
wp option delete 'livetv_h3'
wp option delete 'livetv_view_offline'
wp option delete 'livetv_effect'
wp option delete 'livetv_cache'
wp option delete 'livetv_irc'
wp option delete 'livetv_twitter'
wp option delete 'livetv_facebook'
wp option delete 'livetv_qtip'
wp option delete 'livetv_3col'
wp option delete 'livetv_types_order'
wp option delete 'livetv_disable_normal'
wp option delete 'livetv_span_color'
wp option delete 'livetv_irc_own3d'
wp option delete 'livetv_irc_twitch'
wp option delete 'livetv_irc_justin'
wp option delete 'livetv_width'
wp option delete 'livetv_height'
wp option delete 'livetv_color'
wp option delete 'livetv_visibility'
wp option delete 'livetv_message'
wp option delete 'livetv_registration'
wp option delete 'livetv_autoplay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'livetv_irc_%'"
wp option delete 'livetv_easy_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'count_live_own3d'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'count_live_own3d'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'count_live_own3d'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'count_live_own3d'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'count_live_justin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'count_live_justin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'count_live_justin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'count_live_justin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'count_live_twitch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'count_live_twitch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'count_live_twitch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'count_live_twitch'"
