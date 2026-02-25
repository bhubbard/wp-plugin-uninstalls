#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'game_information_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'game_information_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'game_information_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'game_information_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'game_information_authors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'game_information_authors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'game_information_authors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'game_information_authors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'game_information_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'game_information_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'game_information_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'game_information_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'game_information_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'game_information_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'game_information_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'game_information_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'game_information_flag_dev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'game_information_flag_dev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'game_information_flag_dev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'game_information_flag_dev'"
