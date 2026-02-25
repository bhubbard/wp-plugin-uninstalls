#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guardify_settings'
wp option delete 'guardify_ip_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guardify_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guardify_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guardify_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guardify_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guardify_last_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guardify_last_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guardify_last_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guardify_last_country'"
