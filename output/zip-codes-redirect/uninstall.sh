#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zipcodes1'
wp option delete 'zipcodes2'
wp option delete 'zipcodeswon'
wp option delete 'zipcodeslost'
wp option delete 'zipcodescheck'
wp option delete 'zipredirecturl'
wp option delete 'zipsubmitcheck'
wp option delete 'zipcodesask'
wp option delete 'zipcodesuse'
wp option delete 'zipcodeswait'
wp option delete 'zipcodeswrong'
wp option delete 'zipcodesneg'
wp option delete 'zipplaceholder'
wp option delete 'ziptitle'
wp option delete 'zipsubmittext'
wp option delete 'zipcodestime'
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

