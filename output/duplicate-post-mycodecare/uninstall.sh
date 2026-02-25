#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selected_post_types_taxonomies'
wp option delete 'duplicate_post_button_text'
wp option delete 'duplicate_post_status'
wp option delete 'duplicate_post_prefix_text'
wp option delete 'duplicate_post_suffix_text'
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

