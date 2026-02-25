#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dirAuthCookieMarker'
wp option delete 'dirAuthControllers'
wp option delete 'dirAuthBaseDn'
wp option delete 'dirAuthPreBindUser'
wp option delete 'dirAuthPreBindPassword'
wp option delete 'dirAuthAccountSuffix'
wp option delete 'dirAuthFilter'
wp option delete 'dirAuthEnableSsl'
wp option delete 'dirAuthUseGroups'
wp option delete 'dirAuthGroups'
wp option delete 'dirAuthEnable'
wp option delete 'dirAuthRequireSsl'
wp option delete 'dirAuthAutoRegister'
wp option delete 'dirAuthInstitution'
wp option delete 'dirAuthLoginScreenMsg'
wp option delete 'dirAuthChangePassMsg'
wp option delete 'dirAuthTOS'
wp option delete 'dirAuthMarketingSSOID'
wp option delete 'dirAuthCookieExpire'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpDirAuthFlag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpDirAuthFlag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpDirAuthFlag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpDirAuthFlag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpDirAuthTOS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpDirAuthTOS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpDirAuthTOS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpDirAuthTOS'"
