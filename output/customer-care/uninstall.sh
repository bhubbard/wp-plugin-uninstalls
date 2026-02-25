#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customer_care_CPT_ID'
wp option delete 'customer_care_settings'
wp option delete 'tagline_alteration_mode'
wp option delete 'customer_care_tagline_settings'
wp option delete 'data_export_ID'
wp option delete 'customer_care_running'

# Clear Cron Jobs
wp cron event delete 'customer_care_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_care_maintenance_email_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_care_maintenance_email_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_care_maintenance_email_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_care_maintenance_email_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_care_payment_email_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_care_payment_email_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_care_payment_email_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_care_payment_email_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_care_maintenance_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_care_maintenance_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_care_maintenance_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_care_maintenance_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_care_payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_care_payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_care_payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_care_payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_accpets_news'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_accpets_news'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_accpets_news'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_accpets_news'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_care_accomplished'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_care_accomplished'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_care_accomplished'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_care_accomplished'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_accpet_news'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_accpet_news'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_accpet_news'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_accpet_news'"
