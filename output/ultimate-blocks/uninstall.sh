#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultimate_blocks'
wp option delete 'ultimate_blocks_extensions'
wp option delete 'UltimateBlocks_installDate'
wp option delete 'UltimateBlocks_review_notify'
wp option delete 'ultimate_blocks_css_version'
wp option delete 'ub_icon_choices'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'widget_block'

# Delete Transients
wp transient delete '_welcome_redirect_ub'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

