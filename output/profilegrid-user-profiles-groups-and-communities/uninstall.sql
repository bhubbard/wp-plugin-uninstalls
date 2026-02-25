-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pg_redirect_to_group_page', 'active_sitewide_plugins', 'pg_rm_change_form_type', 'pg_group_menu', 'pg_group_list', 'pg_group_icon', 'pg_dismissible_discount_sale_banner', 'progrid_db_version', 'pm_enable_blog', 'pm_blog_feature_image', 'pm_blog_tags', 'pm_blog_editor', 'pm_blog_privacy_level', 'pm_blog_notification_user', 'pm_blog_notification_admin', 'pm_friends_panel', 'pm_show_privacy_settings', 'pm_allow_user_to_hide_their_profile', 'pm_show_delete_profile', 'pm_admin_notification', 'pm_admin_account_review_notification', 'pm_admin_account_deletion_notification', 'pm_auto_approval', 'pm_send_user_activation_link', 'pm_blog_post_from', 'pm_encrypt_secret_key', 'pm_encrypt_secret_iv', 'progrid_multi_group_version', 'pm_hide_wp_toolbar', 'pm_hide_admin_toolbar', 'rm_user_online_status');
DELETE FROM wp_options WHERE option_name LIKE 'pg_rm_change_form_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'pg_rm_change_form_type_group_name_%';
DELETE FROM wp_options WHERE option_name LIKE 'pg_api_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pm_enable_custom_access', 'pm_content_access', 'pm_content_access_group', 'pm_admin_note_content', 'pm_admin_note_position', 'pm_group', 'pm_user_avatar', 'pm_cover_image', 'pm_hide_my_profile', 'pm_profile_privacy', 'rm_user_status', 'pm_activation_code', 'pg_msg_unread_dismissed_at', 'user_pass', 'pm_group_payment_status', 'pm_user_payment_status', 'pm_invoice', 'pm_txn_id', 'pm_paypal_log_id', 'pg_select_user_group', 'pm_joining_date', 'profilegrid_application_passwords', 'pm_accessible_groups', 'pg_notification_added', 'pm_pw_reset_attempt', 'pm_last_active_time', 'pm_last_login', 'pm_login_status', 'pg_blog_sort_limit', 'pg_member_sort_limit', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('pm_enable_custom_access', 'pm_content_access', 'pm_content_access_group', 'pm_admin_note_content', 'pm_admin_note_position', 'pm_group', 'pm_user_avatar', 'pm_cover_image', 'pm_hide_my_profile', 'pm_profile_privacy', 'rm_user_status', 'pm_activation_code', 'pg_msg_unread_dismissed_at', 'user_pass', 'pm_group_payment_status', 'pm_user_payment_status', 'pm_invoice', 'pm_txn_id', 'pm_paypal_log_id', 'pg_select_user_group', 'pm_joining_date', 'profilegrid_application_passwords', 'pm_accessible_groups', 'pg_notification_added', 'pm_pw_reset_attempt', 'pm_last_active_time', 'pm_last_login', 'pm_login_status', 'pg_blog_sort_limit', 'pg_member_sort_limit', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('pm_enable_custom_access', 'pm_content_access', 'pm_content_access_group', 'pm_admin_note_content', 'pm_admin_note_position', 'pm_group', 'pm_user_avatar', 'pm_cover_image', 'pm_hide_my_profile', 'pm_profile_privacy', 'rm_user_status', 'pm_activation_code', 'pg_msg_unread_dismissed_at', 'user_pass', 'pm_group_payment_status', 'pm_user_payment_status', 'pm_invoice', 'pm_txn_id', 'pm_paypal_log_id', 'pg_select_user_group', 'pm_joining_date', 'profilegrid_application_passwords', 'pm_accessible_groups', 'pg_notification_added', 'pm_pw_reset_attempt', 'pm_last_active_time', 'pm_last_login', 'pm_login_status', 'pg_blog_sort_limit', 'pg_member_sort_limit', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pm_enable_custom_access', 'pm_content_access', 'pm_content_access_group', 'pm_admin_note_content', 'pm_admin_note_position', 'pm_group', 'pm_user_avatar', 'pm_cover_image', 'pm_hide_my_profile', 'pm_profile_privacy', 'rm_user_status', 'pm_activation_code', 'pg_msg_unread_dismissed_at', 'user_pass', 'pm_group_payment_status', 'pm_user_payment_status', 'pm_invoice', 'pm_txn_id', 'pm_paypal_log_id', 'pg_select_user_group', 'pm_joining_date', 'profilegrid_application_passwords', 'pm_accessible_groups', 'pg_notification_added', 'pm_pw_reset_attempt', 'pm_last_active_time', 'pm_last_login', 'pm_login_status', 'pg_blog_sort_limit', 'pg_member_sort_limit', 'first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_invoice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_invoice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_invoice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_invoice_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_user_payment_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_user_payment_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_user_payment_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_user_payment_status_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_txn_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_txn_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_txn_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_txn_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_paypal_log_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_paypal_log_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_paypal_log_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_paypal_log_id_%';

