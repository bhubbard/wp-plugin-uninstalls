#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'one_time_login_cleanup_expired_tokens'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'one_time_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'one_time_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'one_time_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'one_time_login_token'"
