#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wm_servers'
wp option delete 'wm_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmc_commands'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmc_commands'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmc_commands'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmc_commands'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'player_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'player_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'player_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'player_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_commands_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_commands_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_commands_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_commands_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_delivered_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_delivered_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_delivered_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_delivered_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minecraft_woo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minecraft_woo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minecraft_woo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minecraft_woo'"
