#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cookie_notice_consent_%'"

# Clear Cron Jobs
wp cron event delete 'cookie_notice_consent_purger'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remote_addr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remote_addr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remote_addr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remote_addr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'http_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'http_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'http_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'http_user_agent'"
