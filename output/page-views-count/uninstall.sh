#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'a3_pvc_version'
wp option delete 'pvc_just_installed'
wp option delete 'a3rev_pvc_plugin'
wp option delete 'a3rev_auth_pvc'
wp option delete 'pvc_settings'
wp option delete 'pvc_reset_all_individual'
wp option delete 'pvc_current_rest_api_enabled'
wp option delete 'pvc_endpoint_rest_api_disabled_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"

# Clear Cron Jobs
wp cron event delete 'pvc_empty_daily_table_daily_event_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_pvc_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_pvc_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_pvc_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_pvc_activated'"
