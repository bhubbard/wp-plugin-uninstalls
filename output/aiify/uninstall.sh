#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AIIFY_MODELS'
wp option delete 'AIIFY_SYSTEM'
wp option delete 'AIIFY'
wp option delete 'AIIFY_OPEN_AI'
wp option delete 'aiify_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

