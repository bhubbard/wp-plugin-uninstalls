#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TFM_flush'
wp option delete 'TFM_Player_enable_ajax'
wp option delete 'TFM_Player_fade'
wp option delete 'TFM_Player_id'
wp option delete 'TFM_Player_menu'
wp option delete 'TFM_Player_playhtml'
wp option delete 'TFM_Player_stophtml'
wp option delete 'TFM_Player_dl'
wp option delete 'TFM_Player_custom_stylesheet'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mpeg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mpeg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mpeg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mpeg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'album'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'album'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'album'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'album'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'available'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'available'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'available'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'available'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'artist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'artist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'artist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'artist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file'"
