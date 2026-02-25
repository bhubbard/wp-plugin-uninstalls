#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flexible_pickup_settings'
wp option delete 'recently_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postal_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postal_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postal_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postal_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgmpa_dismissed_notice_flexible-pickup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgmpa_dismissed_notice_flexible-pickup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgmpa_dismissed_notice_flexible-pickup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgmpa_dismissed_notice_flexible-pickup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flexible_pickup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flexible_pickup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flexible_pickup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flexible_pickup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
