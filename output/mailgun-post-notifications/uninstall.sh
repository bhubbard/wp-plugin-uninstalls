#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailgun_post_notifications_to_address'
wp option delete 'mailgun_post_notifications_from_name'
wp option delete 'mailgun_post_notifications_from_address'
wp option delete 'mailgun_post_notifications_subject'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailgun_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailgun_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailgun_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailgun_notification_sent'"
