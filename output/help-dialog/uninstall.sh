#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'ephd_one_time_notices'
wp option delete 'ephd_ongoing_notices'
wp option delete 'classic-editor-replace'
wp option delete 'ephd_run_setup'
wp option delete 'ephd_version'
wp option delete 'ephd_error_log'
wp option delete 'ephd_global_config'
wp option delete 'ephd_notification_rules_config'
wp option delete 'ephd_show_upgrade_message'
wp option delete 'ephd_analytics_purge_date'

# Delete Transients
wp transient delete '_ephd_advanced_search_debug_activated'
wp transient delete '_ephd_plugin_activated'
wp transient delete '_ephd_delete_all_hd_data'
wp transient delete '_ephd_plugin_installed'

