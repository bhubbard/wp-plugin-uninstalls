#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmrm_exp_settings'
wp option delete 'hmrm_edu_info_settings'
wp option delete 'hmrm_general_settings'
wp option delete 'hmrm_skills_settings'
wp option delete 'hmrm_style_settings'
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

