#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fca_qc_gdpr_checkbox'
wp option delete 'fca_qc_gdpr_locale'
wp option delete 'links_updated_date_format'
wp option delete 'fca_qc_show_review_notice'

# Clear Cron Jobs
wp cron event delete 'fca_qc_schedule_review_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_cat_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_cat_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_cat_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_cat_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_cat_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_cat_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_cat_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_cat_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_cat_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_cat_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_cat_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_cat_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_cat_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_cat_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_cat_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_cat_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_cat_translations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_cat_translations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_cat_translations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_cat_translations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_cat_appearance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_cat_appearance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_cat_appearance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_cat_appearance'"
