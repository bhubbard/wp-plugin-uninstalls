#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'log_emails_limit_days'

# Clear Cron Jobs
wp cron event delete 'log_emails_purge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_emails_log_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_emails_log_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_emails_log_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_emails_log_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_emails_log_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_emails_log_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_emails_log_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_emails_log_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_emails_log_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_emails_log_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_emails_log_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_emails_log_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_emails_log_bcc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_emails_log_bcc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_emails_log_bcc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_emails_log_bcc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_emails_log_altbody'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_emails_log_altbody'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_emails_log_altbody'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_emails_log_altbody'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_emails_log_content-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_emails_log_content-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_emails_log_content-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_emails_log_content-type'"
