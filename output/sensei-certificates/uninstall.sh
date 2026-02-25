#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sensei-settings'
wp option delete 'woothemes-sensei-version'
wp option delete 'sensei-version'
wp option delete 'sensei_certificates_version'
wp option delete 'sensei_certificate_user_data_installer'
wp option delete 'sensei_certificate_templates_installer'

# Clear Cron Jobs
wp cron event delete 'sensei_certificates_check_run_installer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_font_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_certificate_template_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_course_certificate_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'learner_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'learner_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'learner_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'learner_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'certificate_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'certificate_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'certificate_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'certificate_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_course'"
