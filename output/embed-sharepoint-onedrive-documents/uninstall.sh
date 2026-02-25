#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_sps_user_email_automatic_connection'
wp option delete 'mo_sps_user_upn_automatic_connection'
wp option delete 'mo_sps_user_name_automatic_connection'
wp option delete 'mo_sps_admin_email'
wp option delete 'mo_sps_admin_password'
wp option delete 'mo_sps_admin_customer_key'
wp option delete 'mo_sps_admin_api_key'
wp option delete 'mo_sps_customer_token'
wp option delete 'mo_sps_admin_phone'
wp option delete 'mo_sps_verify_customer'
wp option delete 'mo_sps_test_connection_status'
wp option delete 'mo_sps_test_connection_user_details'
wp option delete 'mo_sps_refresh_token'
wp option delete 'mo_sps_auth_code'
wp option delete 'mo_sps_registration_status'
wp option delete 'copilot_search_data_source'
wp option delete 'mo_sps_cloud_connector'
wp option delete 'mo_saml_admin_email'
wp option delete 'mo_sps_application_config'
wp option delete 'mo_sps_feedback_config'
wp option delete 'mo_sps_notice_message'
wp option delete 'mo_sps_all_sites'
wp option delete 'mo_sps_plugin_migration_completed'

# Delete Transients
wp transient delete 'mo_copilot_notice_dismissed_until'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_sps_auth_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_sps_auth_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_sps_auth_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_sps_auth_code'"
