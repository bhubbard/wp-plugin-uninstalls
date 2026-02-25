#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsc_current_version'
wp option delete 'wpsc_db_version'
wp option delete 'wpsc-agent-roles'
wp option delete 'wpsc-tff'
wp option delete 'wpsc-atl-list-items'
wp option delete 'wpsc-atl-filter-items'
wp option delete 'wpsc-atl-default-filters'
wp option delete 'wpsc-ctl-list-items'
wp option delete 'wpsc-ctl-filter-items'
wp option delete 'wpsc-ctl-default-filters'
wp option delete 'wpsc-tl-ms-agent-view'
wp option delete 'wpsc-tl-ms-customer-view'
wp option delete 'wpsc-tl-ms-advanced'
wp option delete 'wpsc-en-general'
wp option delete 'wpsc-email-templates'
wp option delete 'wpsc-en-user-reg'
wp option delete 'wpsc-en-guest-login'
wp option delete 'wpsc-gs-general'
wp option delete 'wpsc-gs-page-settings'
wp option delete 'wpsc-gs-file-attachments'
wp option delete 'wpsc-gs-thankyou-page-settings'
wp option delete 'wpsc-gdpr-settings'
wp option delete 'wpsc-recaptcha-settings'
wp option delete 'wpsc-ms-advanced-settings'
wp option delete 'wpsc-term-and-conditions'
wp option delete 'wpsc-ticket-widget'
wp option delete 'wpsc-te-agent'
wp option delete 'wpsc-te-registered-user'
wp option delete 'wpsc-te-guest-user'
wp option delete 'wpsc-te-advanced'
wp option delete 'wpsc-wh-settings'
wp option delete 'wpsc-ap-general'
wp option delete 'wpsc-ap-individual-ticket'
wp option delete 'wpsc-ap-modal'
wp option delete 'wpsc-ap-agent-collision'
wp option delete 'wpsc-ap-ticket-list'
wp option delete 'wpsc-ticket-tags-general-settings'
wp option delete 'wpsc-ap-dashboard'
wp option delete 'wpsc-dashboard-cards'
wp option delete 'wpsc-dashboard-widgets'
wp option delete 'wpsc-db-gs-settings'
wp option delete 'wpsc-string-translation'
wp option delete 'wpsc-anonymous-user-id'
wp option delete 'wpsc_upgrade_cleanup'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'wpsc-unresolved-reset-status'
wp option delete 'wpsc_tl_agent_orderby'
wp option delete 'wpsc_tl_agent_orderby_order'
wp option delete 'wpsc_tl_agent_no_of_tickets'
wp option delete 'wpsc_tl_agent_unresolve_statuses'
wp option delete 'wpsc_tl_customer_orderby'
wp option delete 'wpsc_tl_customer_orderby_order'
wp option delete 'wpsc_tl_customer_no_of_tickets'
wp option delete 'wpsc_tl_customer_unresolve_statuses'
wp option delete 'wpsc_en_from_name'
wp option delete 'wpsc_en_from_email'
wp option delete 'wpsc_en_reply_to'
wp option delete 'wpsc_en_ignore_emails'
wp option delete 'wpsc_support_page_id'
wp option delete 'wpsc_default_ticket_status'
wp option delete 'wpsc_default_ticket_category'
wp option delete 'wpsc_default_ticket_priority'
wp option delete 'wpsc_ticket_status_after_customer_reply'
wp option delete 'wpsc_ticket_status_after_agent_reply'
wp option delete 'wpsc_close_ticket_status'
wp option delete 'wpsc_allow_customer_close_ticket'
wp option delete 'wpsc_reply_form_position'
wp option delete 'wpsc_ticket_alice'
wp option delete 'wpsc_allow_guest_ticket'
wp option delete 'wpsc_allow_tinymce_in_guest_ticket'
wp option delete 'wpsc_reply_to_close_ticket'
wp option delete 'wpsc_default_login_setting'
wp option delete 'wpsc_user_registration'
wp option delete 'wpsc_thankyou_html'
wp option delete 'wpsc_thankyou_url'
wp option delete 'wpsc_terms_and_conditions'
wp option delete 'wpsc_terms_and_conditions_html'
wp option delete 'wpsc_set_in_gdpr'
wp option delete 'wpsc_gdpr_html'
wp option delete 'wpsc_personal_data_retention_period_time'
wp option delete 'wpsc_personal_data_retention_period_unit'
wp option delete 'wpsc_guest_can_upload_files'
wp option delete 'wpsc_ticket_public_mode'
wp option delete 'wpsc_allow_reply_confirmation'
wp option delete 'wpsc_tinymce_toolbar'
wp option delete 'wpsc_tinymce_toolbar_active'
wp option delete 'wpsc_thread_date_format'
wp option delete 'wpsc_do_not_notify_setting'
wp option delete 'wpsc_captcha'
wp option delete 'wpsc_recaptcha_type'
wp option delete 'wpsc_get_site_key'
wp option delete 'wpsc_get_secret_key'
wp option delete 'wpsc_upgrade_sf_rating_map'
wp option delete 'wpsc_sf_page'
wp option delete 'wpsc_sf_thankyou_text'
wp option delete 'wpsc_sf_age'
wp option delete 'wpsc_sf_age_unit'
wp option delete 'wpsc_sf_subject'
wp option delete 'wpsc_sf_email_body'
wp option delete 'wpsc_ep_block_emails'
wp option delete 'wpsc_ep_cron_execution_time'
wp option delete 'wpsc_ep_piping_type'
wp option delete 'wpsc_ep_client_id'
wp option delete 'wpsc_ep_client_secret'
wp option delete 'wpsc_ep_email_address'
wp option delete 'wpsc_ep_imap_email_address'
wp option delete 'wpsc_ep_imap_email_password'
wp option delete 'wpsc_ep_imap_incoming_mail_server'
wp option delete 'wpsc_ep_imap_port'
wp option delete 'wpsc_ep_refresh_token'
wp option delete 'wpsc_ep_historyId'
wp option delete 'wpsc_ep_block_subject'
wp option delete 'wpsc_ep_allowed_user'
wp option delete 'wpsc_ep_email_type'
wp option delete 'wpsc_ep_debug_mode'
wp option delete 'wpsc_agent_role'
wp option delete 'wpsc_close_ticket_group'
wp option delete 'wpsc_tl_statuses'
wp option delete 'wpsc_email_sending_method'
wp option delete 'wpsc_en_send_mail_count'
wp option delete 'wpsc_allow_to_create_ticket'
wp option delete 'wpsc_allow_reply_to_close_ticket'
wp option delete 'wpsc_user_registration_method'
wp option delete 'wpsc_custom_registration_url'
wp option delete 'wpsc_calender_date_format'
wp option delete 'wpsc_custom_login_url'
wp option delete 'wpsc_thread_date_time_format'
wp option delete 'wpsc_allow_reply_to_public_tickets'
wp option delete 'wpsc_default_do_not_notify_option'
wp option delete 'wpsc_hide_show_priority'
wp option delete 'wpsc_view_more'
wp option delete 'wpsc_on_and_off_auto_refresh'
wp option delete 'wpsc_ticket_id_type'
wp option delete 'wpsc_custom_ticket_count'
wp option delete 'wpsc_rt_id_length'
wp option delete 'wpsc_thread_limit'
wp option delete 'wpsc_redirect_to_ticket_list'
wp option delete 'wpsc_reg_guest_user_after_create_ticket'
wp option delete 'wpsc_auto_delete_ticket_time'
wp option delete 'wpsc_auto_delete_ticket_time_period_unit'
wp option delete 'wpsc_reply_bcc_visibility'
wp option delete 'wpsc_new_ticket_btn_url'
wp option delete 'wpsc_raised_by_user'
wp option delete 'wpsc_allow_rich_text_editor'
wp option delete 'wpsc_allow_html_pasting'
wp option delete 'wpsc_registration_captcha'
wp option delete 'wpsc_login_captcha'
wp option delete 'wpsc_create_ticket'
wp option delete 'wpsc_appearance_login_form'
wp option delete 'wpsc_appearance_general_settings'
wp option delete 'wpsc_individual_ticket_page'
wp option delete 'wpsc_modal_window'
wp option delete 'wpsc_appearance_signup'
wp option delete 'wpsc_appearance_ticket_list'
wp option delete 'wpsc_assign_auto_responder'
wp option delete 'wpsc_atc_age'
wp option delete 'wpsc_atc_status'
wp option delete 'wpsc_atc_waring_email_age'
wp option delete 'wpsc_atc_subject'
wp option delete 'wpsc_atc_email_body'
wp option delete 'wpsc_ep_emails_forwarded'
wp option delete 'wpsc_ep_from_email'
wp option delete 'wpsc_ep_imap_encryption'
wp option delete 'wpsc_close_user_warn_email_status'
wp option delete 'wpsc_close_user_warn_email_body'
wp option delete 'wpsc_ct_warn_email_status'
wp option delete 'wpsc_ct_warn_email_body'
wp option delete 'wpsc_ep_accept_emails'
wp option delete 'wpsc_add_additional_recepients'
wp option delete 'wpsc_select_faq_set'
wp option delete 'wpsc_select_knowledgbase_set'
wp option delete 'wpsc_selected_user_roll_data'
wp option delete 'wpsc_export_ticket_list'
wp option delete 'wpsc_customer_export_ticket_list'
wp option delete 'wpsc_dashboard_support_tab'
wp option delete 'wpsc_dashboard_support_tab_label'
wp option delete 'wpsc_order_help_button'
wp option delete 'wpsc_order_help_button_label'
wp option delete 'wpsc_woo_ticket_url'
wp option delete 'wpsc_schedule_ticket_btn'
wp option delete 'wpsc_out_sla_color'
wp option delete 'wpsc_in_sla_color'
wp option delete 'wpsc_usergroup_change_category'
wp option delete 'wpsc_allow_ug_sup_close_ticket'
wp option delete 'wpsc_timer_enable'
wp option delete 'wpsc_timer_stop'
wp option delete 'wpsc_timer_visibility_for_customer'
wp option delete 'wpsc_pc_role_permissions'
wp option delete 'wpsc_print_th_btn_setting'
wp option delete 'wpsc_print_btn_lbl'
wp option delete 'wpsc_print_cust_btn_setting'
wp option delete 'wpsc_print_page_header_height'
wp option delete 'wpsc_print_page_footer_height'
wp option delete 'wpsc_print_ticket_header'
wp option delete 'wpsc_print_ticket_body'
wp option delete 'wpsc_print_ticket_footer'
wp option delete 'wpsc_appearance_print_ticket'
wp option delete 'wpsc_attachment_max_filesize'
wp option delete 'wpsc_allow_attachment_type'
wp option delete 'wpsc_image_download_method'
wp option delete 'wpsc_allow_attach_create_ticket'
wp option delete 'wpsc_allow_attach_reply_form'
wp option delete 'wpsc_show_attachment_notice'
wp option delete 'wpsc_attachment_notice'
wp option delete 'wpsc_upgrade_permission_v2'
wp option delete 'wpsc_v2_upgrade_cron_status'
wp option delete 'wpsc_upgrade_installed_addons'
wp option delete 'wpsc_upgrade_cf_slug_map'
wp option delete 'wpsc_upgrade_cf_options_map'
wp option delete 'wpsc_upgrade_status_map'
wp option delete 'wpsc_upgrade_category_map'
wp option delete 'wpsc_upgrade_priority_map'
wp option delete 'wpsc_upgrade_agent_map'
wp option delete 'wpsc_upgrade_ug_term_id_map'
wp option delete 'wpsc_upgrade_saved_filters_map'
wp option delete 'wpsc_upgrade_cf_term_id_map'
wp option delete 'wpsc_upgrade_en_term_id_map'
wp option delete 'wpsc_upgrade_aar_map'
wp option delete 'wpsc_upgrade_sla_policy_map'
wp option delete 'wpsc-tl-df-auto-increament'
wp option delete 'wpsc-aar-rules'
wp option delete 'wpsc-sla-policies'
wp option delete 'wpsc_upgrade_permission_v1'
wp option delete 'wpsc_v1_upgrade_cron_status'
wp option delete 'wpsc_upgrade_cf_load_order'
wp option delete 'wpsc-aar-general-settings'
wp option delete 'wpsc-atc-settings'
wp option delete 'wpsc-atc-et'
wp option delete 'wpsc-sf-general-setting'
wp option delete 'wpsc-sf-et'
wp option delete 'wpsc-ep-general-settings'
wp option delete 'wpsc-ep-imap-settings'
wp option delete 'wpsc-ep-gmail-settings'
wp option delete 'wpsc-ep-pipe-rules'
wp option delete 'wpsc-faq-settings'
wp option delete 'wpsc-kb-settings'
wp option delete 'wpsc-export-roles'
wp option delete 'wpsc-agent-export-settings'
wp option delete 'wpsc-register-export-settings'
wp option delete 'wpsc-woo-settings'
wp option delete 'wpsc-st-rules'
wp option delete 'wpsc-sla-general-settings'
wp option delete 'wpsc_ticket_url_permission'
wp option delete 'wpsc_auto_delete_ticket'
wp option delete 'wpsc_report_raised_by_user'
wp option delete 'wpsc_allow_survey_after_ticket_close'
wp option delete 'wpsc-ep-usertype-warning-email'
wp option delete 'wpsc-close-ticket-page-settings'
wp option delete 'wpsc-st-general-settings'
wp option delete 'wpsc-ug-general-settings'
wp option delete 'wpsc-gf-integrations'
wp option delete 'wpsc-timer-settings'
wp option delete 'wpsc-pt-general-settings'
wp option delete 'wpsc-pt-template-settings'
wp option delete 'wpsc_atc_license_key'
wp option delete 'wpsc_atc_license_expiry'
wp option delete 'wpsc_canned_reply_license_key'
wp option delete 'wpsc_canned_reply_license_expiry'
wp option delete 'wpsc_export_ticket_license_key'
wp option delete 'wpsc_export_ticket_license_expiry'
wp option delete 'wpsc_ep_license_key'
wp option delete 'wpsc_ep_license_expiry'
wp option delete 'wpsc_sla_license_key'
wp option delete 'wpsc_sla_license_expiry'
wp option delete 'wpsc_woo_license_key'
wp option delete 'wpsc_woo_license_expiry'
wp option delete 'wpsc_rp_license_key'
wp option delete 'wpsc_rp_license_expiry'
wp option delete 'wpsc_usergroup_license_key'
wp option delete 'wpsc_usergroup_license_expiry'
wp option delete 'wpsc_edd_license_key'
wp option delete 'wpsc_edd_license_expiry'
wp option delete 'wpsc_gf_license_key'
wp option delete 'wpsc_gf_license_expiry'
wp option delete 'wpsc_caa_license_key'
wp option delete 'wpsc_caa_license_expiry'
wp option delete 'wpsc_ultfaq_license_key'
wp option delete 'wpsc_ultfaq_license_expiry'
wp option delete 'wpsc_prass_kb_license_key'
wp option delete 'wpsc_prass_kb_license_expiry'
wp option delete 'wpsc_timer_license_key'
wp option delete 'wpsc_timer_license_expiry'
wp option delete 'wpsc_st_license_key'
wp option delete 'wpsc_st_license_expiry'
wp option delete 'wpsc_sf_license_key'
wp option delete 'wpsc_sf_license_expiry'
wp option delete 'wpsc_agentgroup_license_key'
wp option delete 'wpsc_agentgroup_license_expiry'
wp option delete 'wpsc_pc_license_key'
wp option delete 'wpsc_pc_license_expiry'
wp option delete 'wpsc_pt_license_key'
wp option delete 'wpsc_pt_license_expiry'
wp option delete 'wpsc-licenses'
wp option delete 'wpsc_upgrade_v3_admin_email'

# Delete Transients
wp transient delete 'wpsc_installing'
wp transient delete 'update_plugins'
wp transient delete 'wpsc_sale_banner_timeout'
wp transient delete 'wpsc_upgrade_saved_filter_conditions_cursor'
wp transient delete 'wpsc_repair_saved_filter_conditions_cursor'
wp transient delete 'wpsc_executing_manual_task'
wp transient delete 'wpsc_executing_scheduled_task'
wp transient delete 'wpsc_ui_upgrading'
wp transient delete 'wpsc_upgrading'

# Clear Cron Jobs
wp cron event delete 'wpsc_v1_upgrade_cleanup'
wp cron event delete 'wpsc_v2_upgrade_cleanup'
wp cron event delete 'wpsc_permanently_delete_archive_tickets'
wp cron event delete 'wpsc_permenently_delete_tickets'
wp cron event delete 'wpsc_auto_archive_closed_tickets'
wp cron event delete 'wpsc_cron_five_minute'
wp cron event delete 'wpsc_cron_daily'
wp cron event delete 'wpsc_license_checker'
wp cron event delete 'wpsc_permanently_delete_tickets'
wp cron event delete 'wpsc_attach_garbage_collector'
wp cron event delete 'wpsc_execute_scheduled_task'
wp cron event delete 'wpsc_reset_missing_counts'
wp cron event delete 'wpsc_upgrade_v1'
wp cron event delete 'wpsc_upgrade_v2'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-wpsc-rp-saved-filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-wpsc-rp-saved-filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-wpsc-rp-saved-filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-wpsc-rp-saved-filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-wpsc-tl-saved-filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-wpsc-tl-saved-filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-wpsc-tl-saved-filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-wpsc-tl-saved-filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-wpsc-rest-attachment-auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-wpsc-rest-attachment-auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-wpsc-rest-attachment-auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-wpsc-rest-attachment-auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-wpsc-tl-cf-auto-increament'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-wpsc-tl-cf-auto-increament'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-wpsc-tl-cf-auto-increament'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-wpsc-tl-cf-auto-increament'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wpsc_email_signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wpsc_email_signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wpsc_email_signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wpsc_email_signature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wpsc_tl_default_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wpsc_tl_default_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wpsc_tl_default_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wpsc_tl_default_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wpsc_tl_default_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wpsc_tl_default_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wpsc_tl_default_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wpsc_tl_default_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-wpsc_agent_signature_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-wpsc_agent_signature_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-wpsc_agent_signature_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-wpsc_agent_signature_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wpsc_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wpsc_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wpsc_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wpsc_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_agent_signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_agent_signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_agent_signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_agent_signature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_status_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_status_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_status_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_status_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_status_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_status_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_status_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_status_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_priority_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_priority_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_priority_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_priority_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_priority_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_priority_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_priority_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_priority_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_extra_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_extra_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_extra_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_extra_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_personal_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_personal_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_personal_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_personal_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agentonly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agentonly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agentonly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agentonly'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agentgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agentgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agentgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agentgroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agentgroup_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agentgroup_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agentgroup_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agentgroup_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_agent_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_agent_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_agent_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_agent_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ep_to_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ep_to_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ep_to_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ep_to_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ep_has_words'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ep_has_words'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ep_has_words'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ep_has_words'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'repeat_every_time_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'repeat_every_time_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'repeat_every_time_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'repeat_every_time_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no_of_recurrence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no_of_recurrence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no_of_recurrence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no_of_recurrence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_usergroup_userid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_usergroup_userid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_usergroup_userid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_usergroup_userid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_usergroup_supervisor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_usergroup_supervisor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_usergroup_supervisor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_usergroup_supervisor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_usergroup_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_usergroup_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_usergroup_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_usergroup_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sla_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sla_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sla_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sla_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsp_out_of_sla_email_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsp_out_of_sla_email_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsp_out_of_sla_email_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsp_out_of_sla_email_send'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_auth_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_auth_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_auth_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_auth_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thread_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thread_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thread_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thread_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wpsc_user_default_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wpsc_user_default_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wpsc_user_default_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wpsc_user_default_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_placeholder_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_placeholder_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_placeholder_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_placeholder_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_default_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_default_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_default_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_default_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tf_default_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tf_default_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tf_default_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tf_default_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_date_range'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_date_range'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_date_range'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_date_range'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_range_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_range_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_range_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_range_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_range_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_range_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_range_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_range_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_time_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_time_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_time_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_time_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_html_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_html_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_html_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_html_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ticket_widget_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ticket_widget_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ticket_widget_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ticket_widget_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ticket_widget_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ticket_widget_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ticket_widget_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ticket_widget_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ep_from_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ep_from_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ep_from_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ep_from_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ticket_et_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ticket_et_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ticket_et_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ticket_et_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_gravity_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_gravity_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_gravity_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_gravity_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_gf_mapping_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_gf_mapping_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_gf_mapping_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_gf_mapping_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'os'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'os'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'os'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'os'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'browser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'browser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'browser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'browser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extra_recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extra_recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extra_recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extra_recipients'"
