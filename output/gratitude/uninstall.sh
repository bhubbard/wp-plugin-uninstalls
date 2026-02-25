#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gb_gratitude_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gb_gratitude_meta_appreciate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gb_gratitude_meta_appreciate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gb_gratitude_meta_appreciate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gb_gratitude_meta_appreciate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gb_gratitude_meta_grat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gb_gratitude_meta_grat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gb_gratitude_meta_grat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gb_gratitude_meta_grat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gb_gratitude_meta_opp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gb_gratitude_meta_opp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gb_gratitude_meta_opp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gb_gratitude_meta_opp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gb_gratitude_meta_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gb_gratitude_meta_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gb_gratitude_meta_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gb_gratitude_meta_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gb_gratitude_meta_do'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gb_gratitude_meta_do'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gb_gratitude_meta_do'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gb_gratitude_meta_do'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gb_gratitude_meta_app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gb_gratitude_meta_app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gb_gratitude_meta_app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gb_gratitude_meta_app'"
