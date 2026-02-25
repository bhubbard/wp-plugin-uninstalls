#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jltels_activation_time'
wp option delete 'eleshop_addons_settings'
wp option delete 'jltels_extensions_save_settings'
wp option delete 'eleshop_third_party_plugins_save_settings'
wp option delete 'jltels_update_redirect'
wp option delete 'eleshop_settings_firstname'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'jltels_update_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

