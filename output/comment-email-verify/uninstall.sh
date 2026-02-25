#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comment-email-verify'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_email_verify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_email_verify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_email_verify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_email_verify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_email_verify_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_email_verify_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_email_verify_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_email_verify_status'"
