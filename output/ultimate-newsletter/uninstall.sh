#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'un_cron_queue'
wp option delete 'un_general_settings'
wp option delete 'un_email_throttling_settings'
wp option delete 'un_email_settings'
wp option delete 'un_email_smtp_settings'
wp option delete 'un_signup_confirmation_settings'
wp option delete 'un_subscriber_wp_users'
wp option delete 'un_version'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'un_subscribers_admin_notice'
wp transient delete 'un_subscribers_update'

# Clear Cron Jobs
wp cron event delete 'un_cron_send_newsletters'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'from_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'from_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'from_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'from_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clicked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clicked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clicked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clicked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newsletters_received'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newsletters_received'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newsletters_received'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newsletters_received'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'un_subscriber_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'un_subscriber_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'un_subscriber_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'un_subscriber_id'"
