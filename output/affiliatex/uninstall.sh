#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'
wp option delete 'affiliatex_google_fonts'
wp option delete 'affiliatex_block_settings'
wp option delete 'affiliatex_customization_settings'
wp option delete 'affiliatex_customization_data'
wp option delete 'affiliatex_db_version'
wp option delete 'affiliatex_dismissed_notices'
wp option delete 'affiliatex_notice_initiated'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'affiliatex_campaign_notices'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'affiliatex_daily_template_update'
wp cron event delete 'affiliatex_sync_amazon_products'
wp cron event delete 'affiliatex_sync_product_listings'
wp cron event delete 'affiliatex_cleanup_product_listings'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
