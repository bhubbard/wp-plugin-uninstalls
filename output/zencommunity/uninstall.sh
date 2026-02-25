#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zenc_academy_events'
wp option delete 'zenc_email_settings'
wp option delete 'zenc_learnpress_events'
wp option delete 'zenc_learndash_events'
wp option delete 'zenc_lifterlms_events'
wp option delete 'zenc_masterstudy_events'
wp option delete 'zenc_tutorlms_events'
wp option delete 'zencommunity_first_install_time'
wp option delete 'zenc_active_addons'
wp option delete 'zencommunity_version'
wp option delete 'zencommunity_db_version'
wp option delete 'zenc_is_pefixed'
wp option delete 'theme_switched_via_customizer'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_is_updating_license' OR option_name LIKE '_site_transient_%_is_updating_license'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'academy_course_curriculum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'academy_course_curriculum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'academy_course_curriculum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'academy_course_curriculum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zenc_theme_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zenc_theme_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zenc_theme_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zenc_theme_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zenc_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zenc_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zenc_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zenc_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zenc_user_role_disabled_caps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zenc_user_role_disabled_caps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zenc_user_role_disabled_caps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zenc_user_role_disabled_caps'"
