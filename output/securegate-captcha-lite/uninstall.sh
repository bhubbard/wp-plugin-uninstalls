#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'securegate_dashboard_notice_dismissed_time'
wp option delete 'securegate_captcha_settings'
wp option delete 'securegate_bypass_start_time'
wp option delete 'securegate_review_notice_dismissed'
wp option delete 'secucali_transient_cleanup_done'
wp option delete 'securegate_daily_stats'

# Delete Transients
wp transient delete 'securegate_review_notice_temp_dismissed'
wp transient delete 'securegate_lite_deactivated_notice'
wp transient delete 'securegate_captcha_logs'

# Clear Cron Jobs
wp cron event delete 'securegate_daily_analytics_cron'

