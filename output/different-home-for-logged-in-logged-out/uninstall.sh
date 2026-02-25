#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logged_in_page_source'
wp option delete 'page_for_logged_in'
wp option delete 'url_for_logged_in'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'diff_home_all_post_types'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

