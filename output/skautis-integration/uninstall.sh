#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skautis_rewrite_rules_need_to_flush'
wp option delete 'skautis_integration_login_page_url'
wp option delete 'skautis_integration_appid_type'
wp option delete 'skautis_integration_appid_prod'
wp option delete 'skautis_integration_appid_test'
wp option delete 'skautis_integration_activated_modules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_page_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allowUsersDisconnectFromSkautis'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkUserPrivilegesIfLoginBySkautis'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_modules_register_defaultwpRole'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_modules_register_rules'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_modules_register_notifications'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_modules_shortcodes_visibilityMode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_modules_visibility_includeChildren'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_modules_visibility_visibilityMode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_modules_visibility_postTypes'"
wp option delete 'skautis-integration_login_page_url'
wp option delete 'skautis-integration_allowUsersDisconnectFromSkautis'
wp option delete 'skautis-integration_checkUserPrivilegesIfLoginBySkautis'
wp option delete 'skautis-integration_modules_register_defaultwpRole'
wp option delete 'skautis-integration_modules_register_notifications'
wp option delete 'skautis-integration_modules_register_rules'
wp option delete 'skautis-integration_modules_shortcodes_visibilityMode'
wp option delete 'skautis-integration_modules_visibility_postTypes'
wp option delete 'skautis-integration_modules_visibility_visibilityMode'
wp option delete 'skautis-integration_modules_visibility_includeChildren'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'skautisUserId_prod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'skautisUserId_prod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'skautisUserId_prod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'skautisUserId_prod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'skautisUserId_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'skautisUserId_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'skautisUserId_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'skautisUserId_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'skautisUserId_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'skautisUserId_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'skautisUserId_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'skautisUserId_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules_includeChildren'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules_includeChildren'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules_includeChildren'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules_includeChildren'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules_visibilityMode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules_visibilityMode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules_visibilityMode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules_visibilityMode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules_data'"
