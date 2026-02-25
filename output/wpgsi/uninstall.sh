#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_additional'
wp option delete 'wpgsi_google_credential'
wp option delete 'wpgsi_google_token'
wp option delete 'wpgsi_logStatus'
wp option delete 'wpgsi_remote_data'
wp option delete 'wpgsi_integrationID'
wp option delete 'wpgsi_integration_original_status'
wp option delete 'wpgsi_installed'
wp option delete 'wpgsi_re_installed'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wpgsi_integrations'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wpgsi_every_two_hours'
wp cron event delete 'wpgsi_every_three_hours'
wp cron event delete 'wpgsi_every_five_hours'
wp cron event delete 'wpgsi_every_seven_hours'
wp cron event delete 'wpgsi_every_twelve_hours'
wp cron event delete 'wpgsi_every_day'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remoteUpdateStatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remoteUpdateStatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remoteUpdateStatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remoteUpdateStatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgsi_lastFired_md5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgsi_lastFired_md5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgsi_lastFired_md5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgsi_lastFired_md5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadsheetID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadsheetID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadsheetID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadsheetID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worksheetID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worksheetID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worksheetID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worksheetID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'showNumberOfRows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'showNumberOfRows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'showNumberOfRows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'showNumberOfRows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syncFrequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syncFrequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syncFrequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syncFrequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disableColumns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disableColumns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disableColumns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disableColumns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worksheetName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worksheetName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worksheetName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worksheetName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'IntegrationPlatform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'IntegrationPlatform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'IntegrationPlatform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'IntegrationPlatform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DataSourceID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DataSourceID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DataSourceID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DataSourceID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadsheetName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadsheetName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadsheetName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadsheetName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lastSyncTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lastSyncTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lastSyncTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lastSyncTime'"
