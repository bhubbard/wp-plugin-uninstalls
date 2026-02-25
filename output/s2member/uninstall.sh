#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ws_plugin__s2member_notices'
wp option delete 'ws_plugin__s2member_cache'
wp option delete 'ws_plugin__s2member_activated_version'
wp option delete 'ws_plugin__s2member_activated_mms_version'
wp option delete 'ws_plugin__s2member_activated_levels'
wp option delete 'ws_plugin__s2member_options'
wp option delete 'ws_plugin__s2member_configured'
wp option delete 'registration'
wp option delete 'add_new_users'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_s2m_ipr_%' OR option_name LIKE '_site_transient_s2m_ipr_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_s2m_%' OR option_name LIKE '_site_transient_s2m_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_s2m_rsf_%' OR option_name LIKE '_site_transient_s2m_rsf_%'"

# Clear Cron Jobs
wp cron event delete 'ws_plugin__s2member_auto_eot_system__schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_notice_dismissed_2300808'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_notice_dismissed_2300808'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_notice_dismissed_2300808'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_notice_dismissed_2300808'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2member_ccaps_req'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2member_ccaps_req'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2member_ccaps_req'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2member_ccaps_req'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2member_ms_signup_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2member_ms_signup_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2member_ms_signup_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2member_ms_signup_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2member_originating_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2member_originating_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2member_originating_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2member_originating_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2member_force_ssl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2member_force_ssl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2member_force_ssl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2member_force_ssl'"
