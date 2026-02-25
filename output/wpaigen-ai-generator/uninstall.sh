#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpaigen_usage_today'
wp option delete 'wpaigen_daily_limit'
wp option delete 'wpaigen_license_type'
wp option delete 'wpaigen_license_key'
wp option delete 'wpaigen_last_usage_date'
wp option delete 'wpaigen_timezone'
wp option delete 'wpaigen_license_email'
wp option delete 'wpaigen_license_status'
wp option delete 'wpaigen_test_country'
wp option delete 'wpaigen_scheduler_db_version'
wp option delete 'wpaigen_midtrans_client_key'

# Clear Cron Jobs
wp cron event delete 'wpaigen_process_scheduled_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpaigen_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpaigen_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpaigen_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpaigen_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpaigen_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpaigen_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpaigen_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpaigen_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
