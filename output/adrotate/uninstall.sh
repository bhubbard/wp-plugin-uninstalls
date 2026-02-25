#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adrotate_advert_status'
wp option delete 'adrotate_hide_getpro'
wp option delete 'adrotate_db_version'
wp option delete 'adrotate_version'
wp option delete 'adrotate_notifications'
wp option delete 'BorlabsCacheConfigInactive'
wp option delete 'adrotate_dynamic_required'
wp option delete 'adrotate_group_css'
wp option delete 'adrotate_config'
wp option delete 'adrotate_crawlers'
wp option delete 'adrotate_geo_required'
wp option delete 'adrotate_geo_requests'
wp option delete 'adrotate_header_output'
wp option delete 'adrotate_hide_license'
wp option delete 'adrotate_hide_review'
wp option delete 'adrotate_hide_birthday'
wp option delete 'adrotate_responsive_required'
wp option delete 'adrotate_hide_premium'
wp option delete 'adrotate_hide_premium_2'
wp option delete 'adrotate_hide_premium_3'
wp option delete 'adrotate_hide_translation'
wp option delete 'adrotate_hide_banner'
wp option delete 'adrotate_hide_competition'

# Clear Cron Jobs
wp cron event delete 'adrotate_empty_trackerdata'
wp cron event delete 'adrotate_delete_transients'
wp cron event delete 'adrotate_evaluate_ads'

