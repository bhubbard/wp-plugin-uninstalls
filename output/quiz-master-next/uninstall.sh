#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'logic_rules_quiz_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'quiz_featured_image_%'"
wp option delete 'qmn_failed_alter_table_queries'
wp option delete 'qsm_check_database_structure'
wp option delete 'qmn-settings'
wp option delete 'qsm_multiple_category_enabled'
wp option delete 'qmn_original_version'
wp option delete 'qsm_update_db_column'
wp option delete 'qsm_update_result_db_column'
wp option delete 'qsm_update_quiz_db_column'
wp option delete 'qsm_update_result_db_column_datatype'
wp option delete 'qsm_add_new_column_question_table_table'
wp option delete 'qsm_update_result_db_column_page_url'
wp option delete 'qsm_update_result_db_column_page_name'
wp option delete 'qsm_update_db_column_charset_utf8mb4_unicode_ci'
wp option delete 'qsm_change_the_post_type'
wp option delete 'qsm_upated_question_type_val'
wp option delete 'qsm_addon_advanced_timer_settings'
wp option delete 'qsm-quiz-settings'
wp option delete 'mlw_advert_shows'
wp option delete 'qmn_quiz_taken_cnt'
wp option delete 'admin_email '
wp option delete 'active_sitewide_plugins'
wp option delete 'qmn_review_message_trigger'
wp option delete 'mlw_quiz_master_version'
wp option delete 'fixed_duplicate_questions'
wp option delete 'fix_deleted_quiz_posts'
wp option delete 'qmn_tracker_last_time'
wp option delete 'qmn-tracking-notice'

# Delete Transients
wp transient delete 'qmn_contributors'
wp transient delete 'qsm_admin_dashboard_data'
wp transient delete 'qsm_ads_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_qsm_already_sent_emails_%' OR option_name LIKE '_site_transient_qsm_already_sent_emails_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'results_screen_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'results_screen_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'results_screen_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'results_screen_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qsm_show_disabled_contact_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qsm_show_disabled_contact_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qsm_show_disabled_contact_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qsm_show_disabled_contact_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nonce_validation_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nonce_validation_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nonce_validation_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nonce_validation_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qmn_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qmn_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qmn_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qmn_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
