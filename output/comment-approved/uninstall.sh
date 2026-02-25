#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comment_approved_message'
wp option delete 'comment_approved_subject'
wp option delete 'comment_approved_mail_type'
wp option delete 'comment_approved_enable'
wp option delete 'comment_approved_default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_me'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_me'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_me'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_me'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_approve_notify_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_approve_notify_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_approve_notify_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_approve_notify_sent'"
