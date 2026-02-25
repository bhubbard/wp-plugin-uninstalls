#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpr_ranking_cache_expire'
wp option delete 'wpr_count_only_visitors'
wp option delete 'wpr_image_type'
wp option delete 'wpr_alternative_image'
wp option delete 'wpr_image_type_custom_field'
wp option delete 'wpr_current_ranking'
wp option delete 'wpr_as_mobile_http_user_agent'
wp option delete 'wpr_exclusion_remote_addrs'
wp option delete 'wpr_exclusion_http_referers'
wp option delete 'wpr_exclusion_http_user_agent'
wp option delete 'wpr_cleanlog_cycle'
wp option delete 'wpr_cleanlog_time'
wp option delete 'wpr_cleanlog_keep_times'
wp option delete 'wpr_use_ajax_logging'
wp option delete 'wpr_db_version'
wp option delete 'wpr_rebuild_cache'
wp option delete 'wpr_reset_views'
wp option delete 'wpr_remote_addr_key'
wp option delete 'wpr_auto_cleanlog'
wp option delete 'wpr_dashboard_rankings'
wp option delete 'wpr_require_authority'

# Delete Transients
wp transient delete 'settings_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpr-%' OR option_name LIKE '_site_transient_wpr-%'"

# Clear Cron Jobs
wp cron event delete 'wpr_scheduled_cleanlog'
wp cron event delete 'wpr_scheduled_cron'

