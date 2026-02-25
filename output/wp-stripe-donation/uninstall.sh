#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmls_form_temp_settings'
wp option delete 'wpsd_key_settings'
wp option delete 'wpsd_recaptcha_Settings'
wp option delete 'wpsd_receipt_email_settings'
wp option delete 'wpsd_receipt_email_temp_settings'
wp option delete 'wpsd_temp_settings'
wp option delete 'wpsd_form_style_settings'
wp option delete 'wpsd_fundraising_settings'
wp option delete 'wpsd_fundraising_style_settings'
wp option delete 'wpsd_general_settings'
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

