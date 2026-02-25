#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'host_name'
wp option delete 'mo_enable_media_restriction'
wp option delete 'mo_media_restriction_allowed_dirs'
wp option delete 'mo_mr_redirect_to'
wp option delete 'mo_media_restriction_security_logs'
wp option delete 'mo_media_restriction_file_types'
wp option delete 'mo_mr_restrict_option'
wp option delete 'mo_media_restriction_choose_server'
wp option delete 'mo_media_restriction_message'
wp option delete 'mo_media_restriction_admin_email'
wp option delete 'mo_media_restriction_admin_phone'
wp option delete 'mo_media_restriction_show_rules'
wp option delete 'mo_media_restriction_admin_fname'
wp option delete 'mo_media_restriction_admin_lname'
wp option delete 'mo_media_restriction_admin_company'
wp option delete 'mo_media_restriction_new_user'
wp option delete 'mo_media_restriction_admin_customer_key'
wp option delete 'mo_media_restriction_admin_api_key'
wp option delete 'customer_token'
wp option delete 'password'
wp option delete 'mo_media_restriction_last_requested_api'
wp option delete 'mo_media_restriction_folder_list'
wp option delete 'mo_role_base_restriction_folder_list'

