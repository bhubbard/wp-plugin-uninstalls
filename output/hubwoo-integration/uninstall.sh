#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwb_hubwoo_guest_user_cart'
wp option delete 'hubwoo_pro_newgroups_saved'
wp option delete 'hubwoo_lock'
wp option delete 'hubwoo_setup_completed'
wp option delete 'hubwoo_alert_param_set'
wp option delete 'hubwoo_oauth_success'
wp option delete 'hubwoo_valid_client_ids_stored'
wp option delete 'hubwoo_free_property_update'
wp option delete 'hubwoo-free-success-api-calls'
wp option delete 'hubwoo-free-error-api-calls'
wp option delete 'hubwoo_invalid_emails'
wp option delete 'hubwoo_abncart_added'
wp option delete 'hubwoo_suggestions_sent'
wp option delete 'hubwoo_token_expiry'
wp option delete 'hubwoo_suggestions_later'
wp option delete 'hubwoo_free_version'
wp option delete 'hubwoo_newversion_groups_saved'
wp option delete 'hubwoo_get_started'
wp option delete 'hubwoo_refresh_token'
wp option delete 'hubwoo_access_token'
wp option delete 'hubwoo_ecomm_bridge_enabled'
wp option delete 'hubwoo_send_suggestions'
wp option delete 'hubwoo_api_validation_error_message'
wp option delete 'hubwoo_account_scopes'
wp option delete 'hubwoo_log_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hubwoo_active_group%'"
wp option delete 'hubwoo_settings_enable'
wp option delete 'hubwoo_owners_portal'

# Clear Cron Jobs
wp cron event delete 'hubwoo_cron_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_user_data_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_user_data_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_user_data_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_user_data_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_modified_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_modified_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_modified_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_modified_fields'"
