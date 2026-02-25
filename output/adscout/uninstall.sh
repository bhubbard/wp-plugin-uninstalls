#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'as_integration_options'
wp option delete 'adscout_integration_options'
wp option delete 'adscout_api_token'
wp option delete 'adscout_partner_domain_hex'
wp option delete 'as_feed_last_updated'
wp option delete 'adscout_hash'

# Clear Cron Jobs
wp cron event delete 'as_generate_product_feed_daily'
wp cron event delete 'run_adscout_job_queue'
wp cron event delete 'adscout_run_job_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_coupon_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_coupon_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_coupon_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_coupon_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_coupon_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_coupon_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_coupon_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_coupon_source'"
