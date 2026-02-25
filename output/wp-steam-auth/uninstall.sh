#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsapSettings_steamAppFlush'
wp option delete 'wpsapOption_popupEnabled'
wp option delete 'wpsapSettings_apiKey'
wp option delete 'wpsapSettings_logoutRedirect'
wp option delete 'wpsapSettings_loginRedirect'
wp option delete 'wpsapSettings_logoutRedirectReferer'
wp option delete 'wpsapSettings_loginRedirectReferer'
wp option delete 'wpsapOption_avatarUpload'
wp option delete 'wpsapOption_avatarEnabled'
wp option delete 'wpsapSettings_steamAppUrl'
wp option delete 'wpsapSettings_steamAppLoginUrl'
wp option delete 'wpsapSettings_steamAppSyncUrl'
wp option delete 'wpsapSettings_steamAppLogoutUrl'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steam_wp_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steam_wp_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steam_wp_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steam_wp_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steam_steamid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steam_steamid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steam_steamid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steam_steamid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steam_force_resync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steam_force_resync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steam_force_resync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steam_force_resync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steam_personaname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steam_personaname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steam_personaname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steam_personaname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steam_realname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steam_realname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steam_realname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steam_realname'"
