#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hlwpw_locationId'
wp option delete 'hlwpw_client_id'
wp option delete 'hlwpw_client_secret'
wp option delete 'hlwpw_access_token'
wp option delete 'hlwpw_refresh_token'
wp option delete 'hlwpw_location_connected'
wp option delete 'default_no_access_redirect_to'
wp option delete 'lcw_post_types'
wp option delete 'lcw_hide_admin_bar'
wp option delete 'lcw_enable_login_redirect'
wp option delete 'lcw_login_redirect_page'
wp option delete 'lcw_enable_logout_redirect'
wp option delete 'lcw_logout_redirect_page'
wp option delete 'lcw_enable_chat'
wp option delete 'lcw_auth_key'
wp option delete 'hlwpw_order_status'
wp option delete 'lcw_association_id'
wp option delete 'leadconnectorwizardpro_license_options'
wp option delete 'lcw_disable_new_user_email'
wp option delete 'lcw_autologin_create_new_user'
wp option delete 'lcw_tag_to_autologin_new_user'
wp option delete 'lcw_tag_to_auto_login_user'
wp option delete 'lcw_db_table_exists'
wp option delete 'lcw_db_version'
wp option delete 'lcw_chat_id'
wp option delete 'lcw_default_order_tag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'hlwpw_location_tags'
wp transient delete 'hlwpw_location_campaigns'
wp transient delete 'hlwpw_location_wokflow'
wp transient delete 'is_access_token_valid'
wp transient delete 'hlwpw_location_custom_values'
wp transient delete 'lcw_location_cutom_fields'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_logged_in_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_logged_in_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_logged_in_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_logged_in_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_required_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_required_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_required_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_required_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_and_required_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_and_required_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_and_required_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_and_required_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_no_access_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_no_access_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_no_access_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_no_access_redirect_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcw_ld_auto_enrollment_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcw_ld_auto_enrollment_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcw_ld_auto_enrollment_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcw_ld_auto_enrollment_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_no_access_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_no_access_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_no_access_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_no_access_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_location_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_location_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_location_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_location_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_location_campaigns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_location_campaigns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_location_campaigns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_location_campaigns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_location_wokflow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_location_wokflow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_location_wokflow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_location_wokflow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlwpw_order_status_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlwpw_order_status_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlwpw_order_status_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlwpw_order_status_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_tag'"
