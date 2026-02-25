#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'members_admin_access_settings'
wp option delete 'mrh_plugin_settings'
wp option delete 'members_role_hierarchy'
wp option delete 'members_hide_announcements'
wp option delete 'members_notifications'
wp option delete 'members_activated'
wp option delete 'members_review_prompt_delay'
wp option delete 'members_settings'
wp option delete 'members_review_prompt_removed'
wp option delete 'members_active_addons'
wp option delete 'members_dismiss_upgrade_header'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'members_addons_migrated'

# Delete Transients
wp transient delete 'members_30days_flag'
wp transient delete 'members_review_prompt_delay'
wp transient delete 'caseproof_growth_tools_configuration_data_v2'

# Clear Cron Jobs
wp cron event delete 'members_admin_notifications_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_members_access_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_members_access_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_members_access_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_members_access_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_members_access_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_members_access_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_members_access_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_members_access_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_role'"
