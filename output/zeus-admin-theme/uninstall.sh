#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_menu_bh_plugin'
wp option delete 'hide_sub_menu_bh_plugin'
wp option delete 'hide_top_menu_bh_plugin'
wp option delete 'rewrite_rules'
wp option delete 'hotkey'
wp option delete 'results_limit'

# Delete Transients
wp transient delete 'hide_wp_toolbar_status'
wp transient delete '_welcome_screen_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_amr_menu_positions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_amr_menu_positions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_amr_menu_positions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_amr_menu_positions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_aame_menu_positions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_aame_menu_positions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_aame_menu_positions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_aame_menu_positions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarvis_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarvis_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarvis_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarvis_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarvis_hotkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarvis_hotkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarvis_hotkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarvis_hotkey'"
