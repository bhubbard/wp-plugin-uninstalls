-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fluentcrm_experimental_settings', 'learndash_settings_groups_management_display', 'mint_contact_primary_fields', 'btcbi_app_conf', 'btcbi_db_version', 'btcbi_installed', 'btcbi_version', 'bit_integrations_pro_integrate_key_data');
DELETE FROM wp_options WHERE option_name LIKE '%allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%tracking_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%tracking_last_sended_at';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_spam_meta_status', '_bbp_pre_trashed_replies', '_bbp_pre_spammed_replies', '_sfwd-quizzes', '_sfwd-quiz', '_sfwd-course_progress', 'curriculum', 'ws_id', 'ndpv_attach_type', '_wpf_member_obj', '_price', '_product_image_gallery', '_downloadable', '_wp_attachment_image_alt', '_form', '_sku', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_spam_meta_status', '_bbp_pre_trashed_replies', '_bbp_pre_spammed_replies', '_sfwd-quizzes', '_sfwd-quiz', '_sfwd-course_progress', 'curriculum', 'ws_id', 'ndpv_attach_type', '_wpf_member_obj', '_price', '_product_image_gallery', '_downloadable', '_wp_attachment_image_alt', '_form', '_sku', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_spam_meta_status', '_bbp_pre_trashed_replies', '_bbp_pre_spammed_replies', '_sfwd-quizzes', '_sfwd-quiz', '_sfwd-course_progress', 'curriculum', 'ws_id', 'ndpv_attach_type', '_wpf_member_obj', '_price', '_product_image_gallery', '_downloadable', '_wp_attachment_image_alt', '_form', '_sku', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_spam_meta_status', '_bbp_pre_trashed_replies', '_bbp_pre_spammed_replies', '_sfwd-quizzes', '_sfwd-quiz', '_sfwd-course_progress', 'curriculum', 'ws_id', 'ndpv_attach_type', '_wpf_member_obj', '_price', '_product_image_gallery', '_downloadable', '_wp_attachment_image_alt', '_form', '_sku', 'rating');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'completed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'completed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'completed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'completed_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'course_completed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'course_completed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'course_completed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'course_completed_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'learndash_course_expired_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'learndash_course_expired_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'learndash_course_expired_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'learndash_course_expired_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pods_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pods_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pods_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pods_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

