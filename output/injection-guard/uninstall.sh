#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ig_requests_log'
wp option delete 'ig_blacklisted'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_session_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_session_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_session_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_session_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_last_session_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_last_session_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_last_session_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_last_session_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_last_logout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_last_logout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_last_logout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_last_logout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_last_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_last_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_last_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_last_seen'"
