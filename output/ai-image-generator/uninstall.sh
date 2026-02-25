#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_wp_cgntvdnmc_api_key'
wp option delete 'ai_wp_cgntvdnmc_resolution'
wp option delete 'ai_wp_cgntvdnmc_variations_num'
wp option delete 'ai_wp_cgntvdnmc_text_to_image_resolution'
wp option delete 'ai_wp_cgntvdnmc_chosen_ai_model'
wp option delete 'ai_wp_cgntvdnmc_text_to_image_quality'
wp option delete 'ai_wp_cgntvdnmc_text_to_image_style'
wp option delete 'ai_wp_cgntvdnmc_text_to_image_results'
wp option delete 'ai_wp_cgntvdnmc_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

