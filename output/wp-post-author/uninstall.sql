-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awpa_seed_insert', 'awpa_setting_options', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'awpa_upgrade_notice_start_time', 'awpa_pro_rating_settings', 'awpa_integrations_setting_options', 'aft_wpa_social_login_integrations_setting_options', 'aft_wpa_mail_settings', 'awpa_author_metabox_integration', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awpa_upgrade_notice_dismiss_temporary_start_time', 'awpa_upgrade_notice_dismiss', 'first_name', 'last_name', 'description', 'advance_input', 'profile_image', 'wpma_linked_guest', 'nickname', 'wpma_author', 'awpa_pro_post_5_star_rating_review', 'wpma_mainauthor', 'wpma_coauthors', 'awpa_rating_review_enable', 'awpa_post_rating_title', 'awpa_post_global_type', 'awpa_post_rating_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('awpa_upgrade_notice_dismiss_temporary_start_time', 'awpa_upgrade_notice_dismiss', 'first_name', 'last_name', 'description', 'advance_input', 'profile_image', 'wpma_linked_guest', 'nickname', 'wpma_author', 'awpa_pro_post_5_star_rating_review', 'wpma_mainauthor', 'wpma_coauthors', 'awpa_rating_review_enable', 'awpa_post_rating_title', 'awpa_post_global_type', 'awpa_post_rating_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('awpa_upgrade_notice_dismiss_temporary_start_time', 'awpa_upgrade_notice_dismiss', 'first_name', 'last_name', 'description', 'advance_input', 'profile_image', 'wpma_linked_guest', 'nickname', 'wpma_author', 'awpa_pro_post_5_star_rating_review', 'wpma_mainauthor', 'wpma_coauthors', 'awpa_rating_review_enable', 'awpa_post_rating_title', 'awpa_post_global_type', 'awpa_post_rating_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awpa_upgrade_notice_dismiss_temporary_start_time', 'awpa_upgrade_notice_dismiss', 'first_name', 'last_name', 'description', 'advance_input', 'profile_image', 'wpma_linked_guest', 'nickname', 'wpma_author', 'awpa_pro_post_5_star_rating_review', 'wpma_mainauthor', 'wpma_coauthors', 'awpa_rating_review_enable', 'awpa_post_rating_title', 'awpa_post_global_type', 'awpa_post_rating_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'awpa_contact_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'awpa_contact_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'awpa_contact_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awpa_contact_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rating_reviewed_user';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rating_reviewed_user';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rating_reviewed_user';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rating_reviewed_user';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rating_review';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rating_review';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rating_review';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rating_review';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'awpa_top_rated_posts_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'awpa_top_rated_posts_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'awpa_top_rated_posts_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awpa_top_rated_posts_%';

