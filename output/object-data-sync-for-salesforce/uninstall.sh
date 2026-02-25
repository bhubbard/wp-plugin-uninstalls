#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_sf_sync_admin_email'
wp option delete 'mo_sf_sync_admin_password'
wp option delete 'mo_sf_sync_admin_customer_key'
wp option delete 'mo_sf_sync_admin_api_key'
wp option delete 'mo_sf_sync_customer_token'
wp option delete 'mo_sf_sync_admin_phone'
wp option delete 'mo_sf_sync_registration_status'
wp option delete 'mo_sf_sync_verify_customer'
wp option delete 'mo_sf_sync_free_version'
wp option delete 'mo_sf_sync_config'
wp option delete 'mo_sf_sync_advanced_search_username'
wp option delete 'mo_sf_sync_advanced_search_action'
wp option delete 'mo_sf_sync_advanced_search_direction'
wp option delete 'mo_sf_sync_advanced_search_status'
wp option delete 'mo_sf_sync_advanced_search_from_date'
wp option delete 'mo_sf_sync_advanced_search_to_date'
wp option delete 'mo_sf_sync_keep_settings_on_deletion'
wp option delete 'mo_sf_sync_advanced_reports'
wp option delete 'vl_check_t'
wp option delete 'vl_check_s'

# Delete Transients
wp transient delete 'mo_sf_sync_integration_trial_notice_dismiss_time'
wp transient delete 'mo_sf_sync_normal_trial_notice_dismiss_time'
wp transient delete 'mo_sf_sync_made_integration_trial_request'
wp transient delete 'mo_sf_sync_plugin_activated'
wp transient delete 'mo_sf_sync_made_trial_request'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salesforce_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salesforce_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salesforce_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salesforce_ID'"
