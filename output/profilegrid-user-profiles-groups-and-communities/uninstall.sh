#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pg_redirect_to_group_page'
wp option delete 'active_sitewide_plugins'
wp option delete 'pg_rm_change_form_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pg_rm_change_form_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pg_rm_change_form_type_group_name_%'"
wp option delete 'pg_group_menu'
wp option delete 'pg_group_list'
wp option delete 'pg_group_icon'
wp option delete 'pg_dismissible_discount_sale_banner'
wp option delete 'progrid_db_version'
wp option delete 'pm_enable_blog'
wp option delete 'pm_blog_feature_image'
wp option delete 'pm_blog_tags'
wp option delete 'pm_blog_editor'
wp option delete 'pm_blog_privacy_level'
wp option delete 'pm_blog_notification_user'
wp option delete 'pm_blog_notification_admin'
wp option delete 'pm_friends_panel'
wp option delete 'pm_show_privacy_settings'
wp option delete 'pm_allow_user_to_hide_their_profile'
wp option delete 'pm_show_delete_profile'
wp option delete 'pm_admin_notification'
wp option delete 'pm_admin_account_review_notification'
wp option delete 'pm_admin_account_deletion_notification'
wp option delete 'pm_auto_approval'
wp option delete 'pm_send_user_activation_link'
wp option delete 'pm_blog_post_from'
wp option delete 'pm_encrypt_secret_key'
wp option delete 'pm_encrypt_secret_iv'
wp option delete 'progrid_multi_group_version'
wp option delete 'pm_hide_wp_toolbar'
wp option delete 'pm_hide_admin_toolbar'

# Delete Transients
wp transient delete 'rm_user_online_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pg_api_token_%' OR option_name LIKE '_site_transient_pg_api_token_%'"

# Clear Cron Jobs
wp cron event delete 'pm_send_message_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_enable_custom_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_enable_custom_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_enable_custom_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_enable_custom_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_content_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_content_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_content_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_content_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_content_access_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_content_access_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_content_access_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_content_access_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_admin_note_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_admin_note_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_admin_note_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_admin_note_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_admin_note_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_admin_note_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_admin_note_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_admin_note_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_cover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_cover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_cover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_cover_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_hide_my_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_hide_my_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_hide_my_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_hide_my_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_profile_privacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_profile_privacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_profile_privacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_profile_privacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_msg_unread_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_msg_unread_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_msg_unread_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_msg_unread_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_group_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_group_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_group_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_group_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_user_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_user_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_user_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_user_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_txn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_paypal_log_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_paypal_log_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_paypal_log_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_paypal_log_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_invoice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_invoice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_invoice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_invoice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_user_payment_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_user_payment_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_user_payment_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_user_payment_status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_txn_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_txn_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_txn_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_txn_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pm_paypal_log_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pm_paypal_log_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pm_paypal_log_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pm_paypal_log_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_select_user_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_select_user_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_select_user_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_select_user_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_joining_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_joining_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_joining_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_joining_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profilegrid_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profilegrid_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profilegrid_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profilegrid_application_passwords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_accessible_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_accessible_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_accessible_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_accessible_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_notification_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_notification_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_notification_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_notification_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_pw_reset_attempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_pw_reset_attempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_pw_reset_attempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_pw_reset_attempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_last_active_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_login_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_login_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_login_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_login_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_blog_sort_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_blog_sort_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_blog_sort_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_blog_sort_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_member_sort_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_member_sort_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_member_sort_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_member_sort_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
