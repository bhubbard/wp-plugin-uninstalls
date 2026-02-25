#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msup_scim_show_attribute'
wp option delete 'msup_scim_test_config_attrs'
wp option delete 'msup_scim_up_host_name'
wp option delete 'msup_scim_up_message'
wp option delete 'msup_scim_idp_name'
wp option delete 'msup_scim_up_bearer_token'
wp option delete 'msup_scim_up_admin_email'
wp option delete 'msup_scim_up_admin_phone'
wp option delete 'msup_scim_up_error_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msup_scim_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msup_scim_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msup_scim_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msup_scim_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
