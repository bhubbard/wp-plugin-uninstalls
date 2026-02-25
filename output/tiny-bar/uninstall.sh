#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmtb_message_content'
wp option delete 'hmtb_button_text'
wp option delete 'hmtb_display_type'
wp option delete 'hmtb_display_option'
wp option delete 'hmtb_content_settings'
wp option delete 'hmtb_general_settings'
wp option delete 'hmtb_styles_settings'
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

