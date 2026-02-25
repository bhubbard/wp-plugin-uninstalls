#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bledro_allowed_blocks_edit'
wp option delete 'bledro_allowed_blocks_add'
wp option delete 'bledro_custom_allowed_blocks'
wp option delete 'bledro_disable_list_view'
wp option delete 'bledro_disabled_roles'
wp option delete 'bledro_disable_block_insertion'
wp option delete 'bledro_allowed_pattern_categories'
wp option delete 'bledro_allow_pattern_insertion'
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

