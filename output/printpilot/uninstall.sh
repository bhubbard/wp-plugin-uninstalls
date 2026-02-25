#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'printpilot_printnode_printers'
wp option delete 'printpilot_gzd_free_documents'
wp option delete 'printpilot_gzd_free_printer_id'
wp option delete 'printpilot_shiptastic_printer_map'
wp option delete 'printpilot_shiptastic_free_printer_id'
wp option delete 'printpilot_shiptastic_free_providers'
wp option delete 'printpilot_shiptastic_printer_settings'
wp option delete 'printpilot_wcdn_free_trigger_status'
wp option delete 'printpilot_wcdn_free_printer_id'
wp option delete 'printpilot_wcdn_free_documents'
wp option delete 'printpilot_wcdn_printer_settings'
wp option delete 'printpilot_printnode_api_key'
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
wp cron event delete 'printpilot_wcdn_async_print'
wp cron event delete 'fs_debug_turn_off_logging_hook'

