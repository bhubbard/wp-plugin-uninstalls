#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrm_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrm_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrm_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrm_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrm_button_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrm_button_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrm_button_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrm_button_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magic_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magic_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magic_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magic_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magic_button_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magic_button_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magic_button_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magic_button_slug'"
