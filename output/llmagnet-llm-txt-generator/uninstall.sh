#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'llmagnet_last_generated'
wp option delete 'llmagnet_ai_seo_optimizer_image_count'
wp option delete 'llmagnet_ai_seo_optimizer_images_without_alt'
wp option delete 'llmagnet_ai_seo_optimizer_settings'
wp option delete 'llmagnet_report_email'
wp option delete 'llmagnet_report_template'
wp option delete 'llmagnet_report_frequency'
wp option delete 'llmagnet_report_send_time'
wp option delete 'llmagnet_report_company_logo'
wp option delete 'llmagnet_plan'
wp option delete 'llmagnet_is_trial'
wp option delete 'llmagnet_db_version'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'llmagnet_woo_active'
wp transient delete 'llmagnet_product_paths'
wp transient delete 'llmagnet_ai_seo_optimizer_last_run'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'llmagnet_ai_seo_daily_event'
wp cron event delete 'llmagnet_visibility_score_daily'
wp cron event delete 'llmagnet_scheduled_email_report'
wp cron event delete 'llmagnet_weekly_analytics_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
