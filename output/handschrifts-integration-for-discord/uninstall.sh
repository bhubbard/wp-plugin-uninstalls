#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'di_guild_id'
wp option delete 'di_bot_token'
wp option delete 'di_client_id'
wp option delete 'di_client_secret'
wp option delete 'di_redirect_url'
wp option delete 'di_auto_add'
wp option delete 'di_wp2d_roles_subscriber'
wp option delete 'di_enable_login'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'di_wp2d_roles_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'di_discord_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'di_discord_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'di_discord_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'di_discord_id'"
