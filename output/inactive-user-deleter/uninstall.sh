#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'UsrInDeleter_lastTrialCheck'
wp option delete 'UsrInDeleter_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_gtm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_gtm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_gtm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_gtm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_IUD_deltime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_IUD_deltime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_IUD_deltime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_IUD_deltime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_IUD_cancelcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_IUD_cancelcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_IUD_cancelcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_IUD_cancelcode'"
