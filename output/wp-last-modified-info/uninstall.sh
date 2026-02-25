#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplmi_plugin_dismiss_rating_notice'
wp option delete 'wplmi_plugin_dismiss_donate_notice'
wp option delete 'wplmi_plugin_no_thanks_rating_notice'
wp option delete 'wplmi_plugin_dismissed_time'
wp option delete 'wplmi_plugin_no_thanks_donate_notice'
wp option delete 'wplmi_plugin_dismissed_time_donate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'wplmi_plugin_installed_time'
wp option delete 'wplmi_plugin_installed_time_donate'
wp option delete 'lmt_plugin_global_settings'
wp option delete 'wplmi_site_global_update_info'
wp option delete 'lmt_dashboard_widget_options'
wp option delete 'wplmi_plugin_api_data'

# Delete Transients
wp transient delete 'wplmi-show-notice-on-activation'
wp transient delete 'wplmi_import_db_done'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'wplmi/fetch_plugin_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_last_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
