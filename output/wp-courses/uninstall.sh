#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc-active-users-view-chart-select'
wp option delete 'wpc-active-users-limit-chart-select'
wp option delete 'wpc-active-users-days-chart-select'
wp option delete 'wpc-popular-courses-view-chart-select'
wp option delete 'wpc-popular-courses-limit-chart-select'
wp option delete 'wpc-tracking-overview-days-chart-select'
wp option delete 'wpc-tracking-overview-view-chart-select'
wp option delete 'wpc_row_width'
wp option delete 'wpc_row_max_width'
wp option delete 'wpc_container_padding_top'
wp option delete 'wpc_container_padding_bottom'
wp option delete 'wpc_container_padding_left'
wp option delete 'wpc_container_padding_right'
wp option delete 'wpc_container_margin_top'
wp option delete 'wpc_container_margin_bottom'
wp option delete 'wpc_primary_bg_color'
wp option delete 'wpc_primary_color'
wp option delete 'wpc_secondary_color'
wp option delete 'wpc_toolbar_buttons_color'
wp option delete 'wpc_selected_bg_color'
wp option delete 'wpc_link_color'
wp option delete 'wpc_standard_button_color'
wp option delete 'wpc_h1_font_size'
wp option delete 'wpc_h2_font_size'
wp option delete 'wpc_h3_font_size'
wp option delete 'wpc_enable_powered_by'
wp option delete 'wpc_enable_rest_lesson'
wp option delete 'wpc_show_course_search'
wp option delete 'wpc_show_course_counters'
wp option delete 'wpc_fix_toolbar_top'
wp option delete 'wpc_fixed_toolbar_offset'
wp option delete 'wpc_show_breadcrumb_trail'
wp option delete 'wpc_show_login_button'
wp option delete 'wpc_show_completed_lessons'
wp option delete 'wpc_courses_per_page'
wp option delete 'wpc_logged_out_message'
wp option delete 'wpc_modules_opened'
wp option delete 'wpc_survey_sent'
wp option delete 'comment_previously_approved'
wp option delete 'wpc_woo_tab'
wp option delete 'wpc_tracking_table_version'
wp option delete 'wpc_connections_table_version'
wp option delete 'wpc_db_version'
wp option delete 'wpc_quiz_table_version'
wp option delete 'wpc_opt_in'
wp option delete 'wpc_email_from_name'
wp option delete 'wpc_email_from'
wp option delete 'wpc_cc'
wp option delete 'wpc_bcc'
wp option delete 'wpc_business_name'
wp option delete 'wpc_unit_number'
wp option delete 'wpc_physical_address'
wp option delete 'wpc_city'
wp option delete 'wpc_state'
wp option delete 'wpc_zip_code'
wp option delete 'wpc_country'
wp option delete 'wpc_woo_show_restricted_content_to_admin'
wp option delete 'wpc_plugin_do_activation_redirect'
wp option delete 'wpc_teachers_per_page'
wp option delete 'wpc_admin_notice_dismissed'

# Delete Transients
wp transient delete 'wpc_dismiss_survey_short'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course-video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course-video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course-video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course-video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lesson-video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lesson-video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lesson-video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lesson-video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-lesson-restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-lesson-restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-lesson-restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-lesson-restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-quiz-welcome-message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-quiz-welcome-message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-quiz-welcome-message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-quiz-welcome-message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-quiz-max-attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-quiz-max-attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-quiz-max-attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-quiz-max-attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-quiz-show-answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-quiz-show-answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-quiz-show-answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-quiz-show-answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-quiz-show-score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-quiz-show-score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-quiz-show-score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-quiz-show-score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-quiz-progress-bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-quiz-progress-bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-quiz-progress-bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-quiz-progress-bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-quiz-empty-answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-quiz-empty-answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-quiz-empty-answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-quiz-empty-answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-quiz-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-quiz-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-quiz-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-quiz-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-lesson-content-drip-days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-lesson-content-drip-days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-lesson-content-drip-days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-lesson-content-drip-days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-certificate-design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-certificate-design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-certificate-design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-certificate-design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-media-sections-1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-media-sections-1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-media-sections-1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-media-sections-1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-media-sections-2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-media-sections-2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-media-sections-2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-media-sections-2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-media-sections-3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-media-sections-3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-media-sections-3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-media-sections-3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpc-media-sections-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpc-media-sections-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpc-media-sections-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpc-media-sections-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-requirement-tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-requirement-tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-requirement-tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-requirement-tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-email-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-email-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-email-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-email-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-email-from-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-email-from-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-email-from-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-email-from-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-email-from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-email-from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-email-from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-email-from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-bcc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-bcc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-bcc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-bcc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-last-viewed-course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-last-viewed-course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-last-viewed-course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-last-viewed-course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-lesson-alias-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-lesson-alias-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-lesson-alias-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-lesson-alias-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-completed-lesson-tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-completed-lesson-tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-completed-lesson-tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-completed-lesson-tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-connected-lesson-to-course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-connected-lesson-to-course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-connected-lesson-to-course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-connected-lesson-to-course'"
