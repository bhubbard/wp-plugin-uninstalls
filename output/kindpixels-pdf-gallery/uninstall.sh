#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kindpdfg_galleries'
wp option delete 'kindpdfg_current_gallery_id'
wp option delete 'kindpdfg_version'
wp option delete 'kindpdfg_seed_rule_checked'
wp option delete 'kindpdfg_license_data'
wp option delete 'kindpdfg_license_key'
wp option delete 'kindpdfg_data'
wp option delete 'kindpdfg_gallery_settings'
wp option delete 'kindpdfg_settings'
wp option delete 'kindpdfg_galleries_backup'
wp option delete 'kindpdfg_analytics'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'kindpdfg_license_changed'
wp transient delete 'update_plugins'
wp transient delete 'kindpdfg_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

