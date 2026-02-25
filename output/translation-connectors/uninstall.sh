#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%smartcat_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%smartcat_workflow_stages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%smartcat_vendor_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%smartcat_account_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%smartcat_api_project_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%statistic_queue_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%callback_authorisation_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%smartcat_debug_mode'"

# Delete Transients
wp transient delete 'smartcat_translation_connector_updated'
wp transient delete 'smartcat_cron_handler'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_errors_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_errors_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_errors_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_errors_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_events_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_events_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_events_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_events_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_profiles_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_profiles_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_profiles_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_profiles_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_dashboard_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_dashboard_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_dashboard_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_dashboard_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
