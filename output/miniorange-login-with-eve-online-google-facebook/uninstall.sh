#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'host_name'
wp option delete 'mo_oauth_client_new_registration'
wp option delete 'mo_oauth_admin_email'
wp option delete 'mo_oauth_client_admin_phone'
wp option delete 'mo_oauth_client_admin_customer_key'
wp option delete 'mo_oauth_setup_wizard_app'
wp option delete 'mo_oauth_apps_list'
wp option delete 'mo_oauth_client_custom_token_endpoint_no_csecret'
wp option delete 'mo_oauth_client_disable_authorization_header'
wp option delete 'mo_oauth_attr_name_list'
wp option delete 'mo_oauth_client_notice_messages'
wp option delete 'mo_attr_option'
wp option delete 'mo_oauth_login_settings_option'
wp option delete 'mo_discovery_validation'
wp option delete 'mo_existing_app_flow'
wp option delete 'mo_debug_check'
wp option delete 'mo_debug_enable'
wp option delete 'mo_oauth_debug'
wp option delete 'mo_oauth_client_show_mo_server_message'
wp option delete 'mo_oauth_client_verify_customer'
wp option delete 'mo_oauth_client_admin_api_key'
wp option delete 'mo_rest_api_plugin_adv_notice_dismissed'
wp option delete 'mo_rest_api_plugin_adv_notice_dismissed_time'
wp option delete 'mo_adv_rest_api_security_status'
wp option delete 'message'
wp option delete 'mo_ajax_scopes_test'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo_ajax_scopes_test_1_%'"
wp option delete 'mo_ajax_scopes_test_2_'
wp option delete 'mo_ajax_scopes_test_3'
wp option delete 'mo_ajax_scopes_test_4'
wp option delete 'mo_ajax_scopes_test_5'
wp option delete 'mo_oc_valid_discovery_ep'
wp option delete 'mo_oauth_admin_fname'
wp option delete 'mo_oauth_admin_lname'
wp option delete 'mo_oauth_admin_company'
wp option delete 'mo_debug_time'
wp option delete 'mo_oauth_email_verification_option_initialized'
wp option delete 'mo_oauth_icon_width'
wp option delete 'mo_oauth_icon_height'
wp option delete 'mo_oauth_icon_margin'
wp option delete 'mo_oauth_icon_configure_css'
wp option delete 'mo_oauth_client_new_customer'
wp option delete 'mo_oauth_client_customer_token'
wp option delete 'mo_oauth_client_registration_status'
wp option delete 'mo_oauth_log'
wp option delete 'mo_oauth_client_show_rest_api_message'
wp option delete 'mo_oauth_demo_creds'
wp option delete 'mo_oauth_message'
wp option delete 'password'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_scope'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_secret'"
wp option delete 'mo_oauth_authorizations'
wp option delete 'mo_oauth_set_val'
wp option delete 'mo_oauth_transactionId'
wp option delete 'mo_oauth_activation_time'
wp option delete 'mo_oauth_login_icon_space'
wp option delete 'mo_oauth_login_icon_custom_width'
wp option delete 'mo_oauth_login_icon_custom_height'
wp option delete 'mo_oauth_login_icon_custom_size'
wp option delete 'mo_oauth_login_icon_custom_color'
wp option delete 'mo_oauth_login_icon_custom_boundary'

# Clear Cron Jobs
wp cron event delete 'mo_oauth_auto_delete_debug_logs'
wp cron event delete 'check_if_wp_rest_apis_are_open'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
