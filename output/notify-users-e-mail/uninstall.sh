#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notify_users_email'
wp option delete 'notify_users_email_version'
wp option delete 'notify_users_mail'
wp option delete 'notify_users_subject_post'
wp option delete 'notify_users_body_post'
wp option delete 'notify_users_subject_comment'
wp option delete 'notify_users_body_comment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notify_users_email_sended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notify_users_email_sended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notify_users_email_sended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notify_users_email_sended'"
