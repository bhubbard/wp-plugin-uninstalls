#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'ame_cpe_settings'
wp option delete 'ame_cpe_restricted_items'
wp option delete 'ws_menu_editor'
wp option delete 'ws_ame_plugin_visibility'
wp option delete 'ws_ame_dashboard_widgets'
wp option delete 'ws_ame_hide_pv_notice'
wp option delete 'ws_ame_redirects'
wp option delete 'ws_ame_rui_first_change'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ame_show_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ame_show_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ame_show_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ame_show_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ame_cpe_post_policy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ame_cpe_post_policy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ame_cpe_post_policy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ame_cpe_post_policy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ws_nmh_seen_menus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ws_nmh_seen_menus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ws_nmh_seen_menus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ws_nmh_seen_menus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ame_rui_first_login_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ame_rui_first_login_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ame_rui_first_login_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ame_rui_first_login_done'"
