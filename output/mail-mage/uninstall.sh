#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewp_email_delay'
wp option delete 'woocommerce_email_base_color'
wp option delete 'ewp_max_hourly_emails'
wp option delete 'ewp_last_ran'

# Clear Cron Jobs
wp cron event delete 'ewp_scheduler'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewp_referral_session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewp_referral_session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewp_referral_session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewp_referral_session'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewp_next_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewp_next_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewp_next_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewp_next_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
