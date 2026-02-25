#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'httpsrdrctn_options'
wp option delete 'ehssl_configs'

# Clear Cron Jobs
wp cron event delete 'ehssl_daily_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issuer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issuer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issuer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issuer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issued_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issued_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issued_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issued_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expires_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expires_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expires_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expires_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_notification_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_notification_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_notification_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_notification_email_sent'"
