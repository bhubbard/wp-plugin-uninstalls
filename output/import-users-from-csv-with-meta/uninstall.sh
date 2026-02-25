#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acui_mail_template_id'
wp option delete 'acui_show_profile_fields'
wp option delete 'acui_columns'
wp option delete 'acui_columns_extended'
wp option delete 'acui_cron_activated'
wp option delete 'acui_cron_send_mail'
wp option delete 'acui_cron_send_mail_updated'
wp option delete 'acui_cron_delete_users'
wp option delete 'acui_cron_delete_users_assign_posts'
wp option delete 'acui_move_file_cron'
wp option delete 'acui_cron_path_to_move_auto_rename'
wp option delete 'acui_cron_allow_multiple_accounts'
wp option delete 'acui_cron_path_to_file'
wp option delete 'acui_cron_path_to_move'
wp option delete 'acui_cron_period'
wp option delete 'acui_cron_role'
wp option delete 'acui_cron_update_roles_existing_users'
wp option delete 'acui_cron_change_role_not_present'
wp option delete 'acui_cron_change_role_not_present_role'
wp option delete 'acui_cron_log'
wp option delete 'acui_automatic_created_edited_wordpress_email'
wp option delete 'acui_automatic_wordpress_email'
wp option delete 'acui_mail_subject'
wp option delete 'acui_mail_body'
wp option delete 'acui_mail_attachment_id'
wp option delete 'acui_enable_email_templates'
wp option delete 'acui_mail_disable_wp_editor'
wp option delete 'acui_frontend_send_mail'
wp option delete 'acui_frontend_send_mail_updated'
wp option delete 'acui_frontend_mail_admin'
wp option delete 'acui_frontend_send_mail_admin_address_list'
wp option delete 'acui_frontend_delete_users'
wp option delete 'acui_frontend_delete_users_assign_posts'
wp option delete 'acui_frontend_change_role_not_present'
wp option delete 'acui_frontend_change_role_not_present_role'
wp option delete 'acui_frontend_role'
wp option delete 'acui_frontend_update_existing_users'
wp option delete 'acui_frontend_update_roles_existing_users'
wp option delete 'acui_frontend_activate_users_wp_members'
wp option delete 'acui_frontend_force_user_reset_password'
wp option delete 'acui_last_roles_used'
wp option delete 'acui_path_to_file'
wp option delete 'acui_manually_send_mail'
wp option delete 'acui_manually_send_mail_updated'
wp option delete 'acui_manually_force_user_reset_password'

# Delete Transients
wp transient delete 'wc_count_comments'
wp transient delete 'acui_export_total_rows'
wp transient delete 'acui_export_bad_character_formulas_values_cleaned'
wp transient delete 'acui_export_user_meta_keys'
wp transient delete 'acui_notices'
wp transient delete 'acui_columns'
wp transient delete 'acui_headers'
wp transient delete 'acui_headers_filtered'
wp transient delete 'acui_positions'
wp transient delete 'acui_errors'
wp transient delete 'acui_errors_totals'
wp transient delete 'acui_results'
wp transient delete 'acui_users_created'
wp transient delete 'acui_users_updated'
wp transient delete 'acui_users_ignored'
wp transient delete 'acui_roles_appeared'
wp transient delete 'acui_last_import_results'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acui_force_reset_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acui_force_reset_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acui_force_reset_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acui_force_reset_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_template_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_template_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_template_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_template_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_domain'"
