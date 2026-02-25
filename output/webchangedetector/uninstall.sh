#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcd_manual_checks_batch'
wp option delete 'wcd_disable_admin_bar_menu'
wp option delete 'wcd_wizard_disabled'
wp option delete 'wcd_sync_url_types'
wp option delete 'wcd_initial_setup_completed'
wp option delete 'wcd_wizard'
wp option delete 'wcd_last_urls_sync'
wp option delete 'wcd_auto_update_history'
wp option delete 'webchangedetector_api_token'
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'
wp option delete 'wcd_webhook_key'
wp option delete 'webchangedetector_api_key'
wp option delete 'auto_update_core_major'
wp option delete 'wcd_auto_updates_running'
wp option delete 'wcd_pre_auto_update'
wp option delete 'wcd_last_auto_update_check_time'
wp option delete 'wcd_flash_messages'
wp option delete 'wcd_post_auto_update'
wp option delete 'wcd_wordpress_cron'
wp option delete 'auto_updater.lock'

# Delete Transients
wp transient delete 'wcd_update_check_running'
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'wcd_single_call_webhook_id'
wp transient delete 'webchangedetector_api_status'

# Clear Cron Jobs
wp cron event delete 'wcd_daily_sync_event'
wp cron event delete 'wcd_sync_auto_update_schedule'
wp cron event delete 'wcd_check_update_completion'
wp cron event delete 'wcd_wp_version_check'
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_maybe_auto_update'
wp cron event delete 'wcd_cron_check_post_queues'

