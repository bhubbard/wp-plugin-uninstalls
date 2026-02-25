#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_oauth_server_client'
wp option delete 'mo_oauth_server_registration_status'
wp option delete 'mo_oauth_admin_email'
wp option delete 'mo_oauth_server_admin_api_key'
wp option delete 'mo_oauth_server_new_registration'
wp option delete 'password_mismatch'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo_oauth_server_jwt_signing_algo_for_%'"
wp option delete 'mo_oauth_server_master_switch'
wp option delete 'mo_oauth_server_enable_oidc'
wp option delete 'mo_oauth_server_enforce_state'
wp option delete 'mo_oauth_server_custom_login_url'
wp option delete 'mo_oauth_server_is_debug_enabled'
wp option delete 'message'
wp option delete 'mo_oauth_server_admin_phone'
wp option delete 'host_name'
wp option delete 'mo_oauth_server_hide_security_warning_admin'
wp option delete 'mo_oauth_server_is_client_secret_encrypted'
wp option delete 'mo_oauth_admin_fname'
wp option delete 'mo_oauth_admin_lname'
wp option delete 'mo_oauth_admin_company'
wp option delete 'mo_oauth_server_admin_customer_key'
wp option delete 'mo_oauth_server_customer_token'
wp option delete 'mo_oauth_server_verify_customer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo_oauth_server_enable_jwt_support_for_%'"
wp option delete 'mo_oauth_server_new_customer'
wp option delete 'mo_oauth_show_mo_server_message'
wp option delete 'mo_oauth_server_jwks_uri_hit_count'
wp option delete 'mo_oauth_server_is_security_warning_mail_sent'
wp option delete 'mo_oauth_expiry_time'
wp option delete 'mo_oauth_refresh_expiry_time'
wp option delete 'mo_oauth_server_security_warning_remind_date'
wp option delete 'mo_oauth_server_current_id_token'
wp option delete 'mo_oauth_server_token_length'

# Clear Cron Jobs
wp cron event delete 'mo_oauth_server_debug_delete_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mo_oauth_server_granted_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mo_oauth_server_granted_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mo_oauth_server_granted_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mo_oauth_server_granted_%'"
