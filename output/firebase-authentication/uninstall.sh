#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_fb_host_name'
wp option delete 'mo_firebase_authentication_admin_email'
wp option delete 'mo_firebase_authentication_admin_phone'
wp option delete 'password'
wp option delete 'mo_firebase_authentication_admin_fname'
wp option delete 'mo_firebase_authentication_admin_lname'
wp option delete 'mo_firebase_authentication_admin_company'
wp option delete 'mo_firebase_authentication_admin_customer_key'
wp option delete 'mo_firebase_authentication_admin_api_key'
wp option delete 'mo_firebase_authentication_lk'
wp option delete 'mo_firebase_authentication_new_registration'
wp option delete 'mo_firebase_authentication_verify_customer'
wp option delete 'mo_firebase_authentication_email'
wp option delete 'mo_enable_firebase_auth'
wp option delete 'mo_firebase_auth_disable_wordpress_login'
wp option delete 'mo_firebase_auth_enable_admin_wp_login'
wp option delete 'mo_firebase_auth_project_id'
wp option delete 'mo_firebase_auth_api_key'
wp option delete 'mo_firebase_auth_cert1'
wp option delete 'mo_firebase_auth_cert2'
wp option delete 'mo_firebase_auth_cert3'
wp option delete 'mo_firebase_auth_kid1'
wp option delete 'mo_firebase_auth_kid2'
wp option delete 'mo_firebase_auth_kid3'
wp option delete 'mo_firebase_authentication_current_plugin_version'
wp option delete 'mo_firebase_authentication_lv'
wp option delete 'mo_firebase_authentication_customer_token'
wp option delete 'mo_firebase_auth_message'
wp option delete 'mo_firebase_authentication_registration_status'
wp option delete 'message'
wp option delete ' mo_firebase_authentication_lv'
wp option delete ' mo_firebase_authentication_lk'
wp option delete 'mo_firebase_authentication_new_customer'
wp option delete 'mo_firebase_authentication_current_plugin_version '
wp option delete 'mo_firebase_auth_woocommerce_intigration'
wp option delete 'mo_enable_firebase_auto_register'
wp option delete 'mo_firebase_auth_buddypress_intigration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_firebase_user_dn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_firebase_user_dn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_firebase_user_dn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_firebase_user_dn'"
