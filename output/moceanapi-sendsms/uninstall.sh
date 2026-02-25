#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moceansms_customer_setting'
wp option delete 'moceansms_domain_reachable'
wp option delete 'moceansms_plugin_version'
wp option delete 'wc_fields_billing'
wp option delete 'smsbump_PhoneNumberPrefix'
wp option delete 'smsbump_StrictNumberPrefix'
wp option delete 'test_mocean'
wp option delete 'ws_plugin__s2member_options'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moceansms_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moceansms_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moceansms_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moceansms_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arm_primary_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arm_primary_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arm_primary_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arm_primary_status'"
