#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coursestorm-settings'
wp option delete 'coursestorm-site-info'
wp option delete 'coursestorm_flushed_permalinks'

# Delete Transients
wp transient delete 'coursestorm_course_import_progress'
wp transient delete 'coursestorm_course_import_status'
wp transient delete 'coursestorm_import_step_transient'
wp transient delete 'coursestorm_settings_status'
wp transient delete 'coursestorm_welcome_screen_activation_redirect'
wp transient delete 'coursestorm_sync_triggered_from_plugin_activation'
wp transient delete 'coursestorm_course_import_start_time'
wp transient delete 'coursestorm_sync_triggered_from_options_page'
wp transient delete 'coursestorm_sync_triggered_manually'
wp transient delete 'coursestorm_import_total_courses_fetched'
wp transient delete 'coursestorm_import_total_courses_to_import'
wp transient delete 'coursestorm_import_current_fetch_course_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_coursestorm_import_courses_raw_course_list_page_%' OR option_name LIKE '_site_transient_coursestorm_import_courses_raw_course_list_page_%'"
wp transient delete 'coursestorm_import_total_courses_saved'
wp transient delete 'coursestorm_import_current_save_course_page'
wp transient delete 'coursestorm_sync_triggered_from_ajax_call'
wp transient delete 'coursestorm_import_current_course_page_transient'
wp transient delete 'coursestorm_import_courses_raw_course_list'

# Clear Cron Jobs
wp cron event delete 'coursestorm_sync'
wp cron event delete 'coursestorm_sync_catalog'
wp cron event delete 'coursestorm_sync_courses'
wp cron event delete 'coursestorm_sync_categories'
wp cron event delete 'coursestorm_sync_save_courses_as_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sessions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sessions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sessions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sessions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_session_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_session_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_session_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_session_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'next_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'next_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'next_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'next_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'next_session_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'next_session_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'next_session_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'next_session_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upcoming_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upcoming_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upcoming_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upcoming_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upcoming_session_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upcoming_session_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upcoming_session_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upcoming_session_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_touched_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_touched_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_touched_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_touched_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'continuous_enrollment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'continuous_enrollment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'continuous_enrollment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'continuous_enrollment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'register_online'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'register_online'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'register_online'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'register_online'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'room'"
