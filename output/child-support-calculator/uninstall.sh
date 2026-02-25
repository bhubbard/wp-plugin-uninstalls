#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcsc_table_html'
wp option delete 'wpcsc__state'
wp option delete 'wpcsc_install_date'
wp option delete 'wpcsc_delete_data'
wp option delete 'wpcsc__settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'wpcsc__pdf'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcsc__%'"
wp option delete 'wpcsc__form'
wp option delete 'wpcsc__form-nc'
wp option delete 'wpcsc__email'
wp option delete 'wpcsc__admin_email'
wp option delete 'wpcsc_table_data'
wp option delete 'wpcsc__misc'
wp option delete 'wpcsc_db_version'
wp option delete 'wpcsc_settings'

# Delete Transients
wp transient delete 'wpcsc_activated'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

