#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtbiz_activation_redirect'
wp option delete 'rtbiz_acl_module_permissions'
wp option delete 'rt_product_plugin_sync'
wp option delete 'p2p_storage'
wp option delete 'rthd_googleapi_redirecturl'
wp option delete 'rthd_googleapi_clientid'
wp option delete 'rthd_googleapi_clientsecret'
wp option delete 'rtbiz_taxonomy_metadata_migration_complete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-meta'"
wp option delete 'r_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'redux-framework-tracking'
wp option delete 'redux_version_upgraded_from'
wp option delete 'redux_support_hash'
wp option delete 'ReduxFrameworkPlugin_ACTIVATED_NOTICES'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp transient delete 'redux_tracking_cache'
wp transient delete 'redux-extensions-fetch'
wp transient delete '_redux_activation_redirect'
wp transient delete 'redux_contributors'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'rt_parse_email_cron'
wp cron event delete 'rt_send_email_cron'
wp cron event delete 'redux_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtbiz_profile_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtbiz_profile_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtbiz_profile_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtbiz_profile_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtbiz_is_staff_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtbiz_is_staff_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtbiz_is_staff_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtbiz_is_staff_member'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtbiz_show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtbiz_show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtbiz_show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtbiz_show_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtlib_messageid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtlib_messageid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtlib_messageid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtlib_messageid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtlib_references'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtlib_references'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtlib_references'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtlib_references'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%'"
