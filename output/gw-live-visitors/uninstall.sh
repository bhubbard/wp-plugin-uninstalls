#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwlv_settings'

# Clear Cron Jobs
wp cron event delete 'gwlv_purge_old_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_seen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_seen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ua'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ua'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ua'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ua'"
