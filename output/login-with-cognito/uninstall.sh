#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'host_name'
wp option delete 'new_registration'
wp option delete 'mo_oauth_admin_email'
wp option delete 'mo_oauth_admin_phone'
wp option delete 'mo_oauth_admin_customer_key'
wp option delete 'mo_oauth_apps_list'
wp option delete 'mo_oauth_client_custom_token_endpoint_no_csecret'
wp option delete 'mo_oauth_client_disable_authorization_header'
wp option delete 'mo_oauth_attr_name_list'
wp option delete 'mo_oauth_client_notice_messages'
wp option delete 'mo_attr_option'
wp option delete 'mo_oauth_client_show_mo_server_message'
wp option delete 'verify_customer'
wp option delete 'mo_oauth_admin_api_key'
wp option delete 'password'
wp option delete 'mo_oauth_admin_fname'
wp option delete 'mo_oauth_admin_lname'
wp option delete 'mo_oauth_admin_company'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_scope'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_secret'"
wp option delete 'mo_oauth_icon_width'
wp option delete 'mo_oauth_icon_height'
wp option delete 'mo_oauth_icon_margin'
wp option delete 'mo_oauth_icon_configure_css'
wp option delete 'mo_oauth_redirect_url'
wp option delete 'mo_oauth_authorizations'
wp option delete 'message'
wp option delete 'mo_oauth_new_customer'
wp option delete 'customer_token'
wp option delete 'mo_oauth_registration_status'
wp option delete 'mo_oauth_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
