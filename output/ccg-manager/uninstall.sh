#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'creature-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'creature-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'creature-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'creature-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'power'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'power'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'power'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'power'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rarity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rarity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rarity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rarity'"
