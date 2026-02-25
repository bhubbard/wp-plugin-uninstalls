#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'bookit_styles_version'
wp option delete 'stm_bookit_appointment_created'
wp option delete 'bookit_feedback_added'
wp option delete 'bookit_import_file'
wp option delete 'bookit_settings'
wp option delete 'bookit_version'
wp option delete 'bookit_db_version'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'stm_bookit_single_notice_setting'
wp transient delete 'bookit_categories'
wp transient delete 'bookit_services'
wp transient delete 'stm_bookit_notice_setting'

