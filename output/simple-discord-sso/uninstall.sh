#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_discord_sso_settings'
wp option delete 'simple_discord_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_discord_sso'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_discord_sso'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_discord_sso'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_discord_sso'"
