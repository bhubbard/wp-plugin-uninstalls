#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cron_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_license_key'"
wp option delete 'disqus_forum_url'
wp option delete 'woocommerce_disqus_comments_and_ratings'
wp option delete 'wp_zamartz_admin_event_tracker'
wp option delete 'zamartz_api_admin_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_product_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_purchase_emails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_get_response'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_admin_notice_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%network_admin_api_status'"
wp option delete 'active_sitewide_plugins'
wp option delete 'disqus_active'

# Clear Cron Jobs
wp cron event delete 'zamartz_api_cron_schedule_twice_monthly'

