#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'octopush_sms_email'
wp option delete 'octopush_sms_key'
wp option delete 'octopush_sms_sender'
wp option delete 'octopush_sms_admin_alert'
wp option delete 'octopush_sms_admin_alert_sent'
wp option delete 'octopush_sms_freeoption'
wp option delete 'octopush_sms_option_id_product'
wp option delete 'octopush_sms_admin_phone'

# Clear Cron Jobs
wp cron event delete 'octopush_sms_event_daily_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_lastname'"
