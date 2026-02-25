#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpssmtp_smtp_ms'
wp option delete 'wpssmtp_smtp'
wp option delete 'wpssmtp_echk'
wp option delete 'wpss_resent'
wp option delete 'wpssmtp_keycheck_fail'

# Clear Cron Jobs
wp cron event delete 'wpss_clear_resent'
wp cron event delete 'wpss_clear_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'headers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'headers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'headers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'headers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timestamp'"
