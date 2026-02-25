#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccbpress_import_in_progress'
wp option delete 'ccbpress_last_import'
wp option delete 'ccbpress_cancel_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active'"
wp option delete 'default_post_edit_rows'
wp option delete 'ccbpress_ccb'
wp option delete 'ccbpress_settings'
wp option delete 'ccbpress_settings_import'
wp option delete 'ccbpress_licenses'
wp option delete 'ccbpress_tools_cron'
wp option delete 'ccbpress_tools_cache'
wp option delete 'ccbpress_rate_limits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key_active'"
wp option delete 'ccbpress_license_data'
wp option delete 'ccbpress_current_import'
wp option delete 'ccbpress_core_db_version'
wp option delete 'ccbpress_ccb_forms_lightbox'
wp option delete 'ccbpress_ccb_links_forms'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'ccbpress-addons'
wp transient delete 'update_plugins'
wp transient delete 'wp_ccbpress_get_process_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'ccbpress_maintenance'
wp cron event delete 'ccbpress_import'
wp cron event delete 'ccbpress_transient_cache_cleanup'
wp cron event delete 'wp_ccbpress_get_cron'

