#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'airdrop-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'airdrop_symbol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'airdrop_symbol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'airdrop_symbol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'airdrop_symbol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'airdrop_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'airdrop_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'airdrop_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'airdrop_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'airdrop_enddate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'airdrop_enddate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'airdrop_enddate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'airdrop_enddate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'airdrop_estimatedvalue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'airdrop_estimatedvalue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'airdrop_estimatedvalue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'airdrop_estimatedvalue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'airdrop_requirement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'airdrop_requirement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'airdrop_requirement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'airdrop_requirement'"
