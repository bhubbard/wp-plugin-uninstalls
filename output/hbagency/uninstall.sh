#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hbagency_wp_website_id'
wp option delete 'hbagency_wp_website_placements'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hbagency_wp_placement_%'"
wp option delete 'hbagency_wp_website_placements_cache_inarticle'
wp option delete 'hbagency_wp_enable_ads_txt'
wp option delete 'hbagency_wp_cmp'
wp option delete 'hbagency_wp_cls'
wp option delete 'hbagency_wp_website_script'
wp option delete 'hbagency_wp_has_cmp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pos'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_par'"
wp option delete 'hbagency_wp_website_status'
wp option delete 'hbagency_wp_website_status_detail'
wp option delete 'hbagency_wp_website_url'
wp option delete 'hbagency_wp_website_ads_txt'
wp option delete 'hbagency_wp_website_ext_id'
wp option delete 'hbagency_wp_website_ads_txt_additional_lines'

# Clear Cron Jobs
wp cron event delete 'hbagency_wp_cron_check_for_updates'

