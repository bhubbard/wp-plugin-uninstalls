#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uncanny_toolkit_active_classes'
wp option delete 'learndash_settings_ld_integrity'
wp option delete '_uncanny_toolkit_review_time'
wp option delete '_uncanny_toolkit_review_reminder'
wp option delete '_uncanny_toolkit_review_reminder_date'
wp option delete 'FrontendLoginPlus'
wp option delete 'LoginRedirect'
wp option delete 'HideAdminBar'
wp option delete 'uncanny_pro_toolkitlearnDashMyCourses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'uncanny_owl_over_time_%'"
wp option delete 'uncanny_owl_notices'
wp option delete 'uo_license_status'
wp option delete 'ulgm_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp option delete 'uo_reporting_license_status'
wp option delete 'uo_codes_license_status'
wp option delete 'uo_license_key'
wp option delete 'active_sitewide_plugins'
wp option delete 'uncanny_owl_over_time_toolkit-free'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'uncanny_owl_admin_notifications_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uo_is_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uo_is_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uo_is_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uo_is_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uo_verified_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uo_verified_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uo_verified_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uo_verified_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'learndash_last_known_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'learndash_last_known_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'learndash_last_known_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'learndash_last_known_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'learndash_last_known_course_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'learndash_last_known_course_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'learndash_last_known_course_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'learndash_last_known_course_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
