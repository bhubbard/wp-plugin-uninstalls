#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmt_mntn_settings'
wp option delete '_bbp_enable_user_mention'
wp option delete 'dismiss-cm-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmt_mntn_email_notification_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmt_mntn_email_notification_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmt_mntn_email_notification_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmt_mntn_email_notification_status'"
