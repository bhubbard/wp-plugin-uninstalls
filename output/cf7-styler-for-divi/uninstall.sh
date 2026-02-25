#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7m_rebrand_seen'
wp option delete 'cf7m_onboarding_completed'
wp option delete 'cf7m_onboarding_skipped'
wp option delete 'cf7m_features'
wp option delete 'cf7m_install_date'
wp option delete 'divi_cf7_styler_install_date'
wp option delete 'cf7m_current_version'
wp option delete 'cf7m_webhook_urls'
wp option delete 'cf7m_onboarding_step'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cf7m_run_onboarding_%' OR option_name LIKE '_site_transient_cf7m_run_onboarding_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

