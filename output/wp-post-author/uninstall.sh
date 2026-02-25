#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awpa_seed_insert'
wp option delete 'awpa_setting_options'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'awpa_upgrade_notice_start_time'
wp option delete 'awpa_pro_rating_settings'
wp option delete 'awpa_integrations_setting_options'
wp option delete 'aft_wpa_social_login_integrations_setting_options'
wp option delete 'aft_wpa_mail_settings'
wp option delete 'awpa_author_metabox_integration'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpa_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpa_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpa_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpa_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpa_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpa_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpa_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpa_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advance_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advance_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advance_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advance_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpma_linked_guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpma_linked_guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpma_linked_guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpma_linked_guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'awpa_contact_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'awpa_contact_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'awpa_contact_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awpa_contact_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rating_reviewed_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rating_reviewed_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rating_reviewed_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rating_reviewed_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rating_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rating_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rating_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rating_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'awpa_top_rated_posts_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'awpa_top_rated_posts_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'awpa_top_rated_posts_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awpa_top_rated_posts_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpa_pro_post_5_star_rating_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpa_pro_post_5_star_rating_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpa_pro_post_5_star_rating_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpa_pro_post_5_star_rating_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpma_mainauthor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpma_mainauthor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpma_mainauthor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpma_mainauthor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpma_coauthors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpma_coauthors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpma_coauthors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpma_coauthors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpa_rating_review_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpa_rating_review_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpa_rating_review_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpa_rating_review_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpa_post_rating_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpa_post_rating_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpa_post_rating_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpa_post_rating_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpa_post_global_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpa_post_global_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpa_post_global_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpa_post_global_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpa_post_rating_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpa_post_rating_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpa_post_rating_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpa_post_rating_type'"
