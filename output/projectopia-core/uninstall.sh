#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'cqpim_plugin_name'
wp option delete 'cqpim_use_default_icon'
wp option delete 'disable_invoices '
wp option delete 'cqpim_expense_auth_limit'
wp option delete 'disable_tickets'
wp option delete 'cqpim_date_format'
wp option delete 'support_ticket_priorities'
wp option delete 'cqpim_online_widget'
wp option delete 'disable_invoices'
wp option delete 'currency_symbol'
wp option delete 'enable_quotes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pto_dashboard_project_order_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pto_dashboard_project_posts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pto_dashboard_project_category_%'"
wp option delete 'enable_project_contracts'
wp option delete 'cqpim_disable_avatars'
wp option delete 'pto_project_update_days'
wp option delete 'cqpim_roles'
wp option delete 'cqpim_client_page'
wp option delete 'cqpim_form_page'
wp option delete 'cqpim_enable_faq'
wp option delete 'cqpim_faq_slug'
wp option delete 'cqpim_invoice_slug'
wp option delete 'cqpim_project_slug'
wp option delete 'pto_default_project_sort'
wp option delete 'pto_default_project_order'
wp option delete 'pto_default_drop_closed'
wp option delete 'cqpim_quote_slug'
wp option delete 'cqpim_task_slug'
wp option delete 'client_invoice_stripe_key'
wp option delete 'cqpim_login_page'
wp option delete 'cqpim_reset_page'
wp option delete 'cqpim_register_page'
wp option delete 'client_dashboard_type'
wp option delete 'client_invoice_stripe_ideal'
wp option delete 'cqpim_admin_dash_css'
wp option delete 'pto_run_setup_wizard'
wp option delete 'pto_frontend_form_google_recaptcha'
wp option delete 'pto_support_opening_warning'
wp option delete 'pto_support_closed_message'
wp option delete 'pto_support_open_message'
wp option delete 'cqpim_custom_fields_support'
wp option delete 'allow_client_users'
wp option delete 'cqpim_enable_faq_dash_cats'
wp option delete 'cqpim_backend_form'
wp option delete 'sales_tax_rate'
wp option delete 'allow_client_settings'
wp option delete 'cqpim_custom_fields_client'
wp option delete 'support_status'
wp option delete 'client_invoice_stripe_secret'
wp option delete 'cqpim_logout_url'
wp option delete 'cqpim_messages_allow_client'
wp option delete 'cqpim_enable_faq_dash'
wp option delete 'cqpim_dash_css'
wp option delete 'cqpim_invoice_logo'
wp option delete 'company_logo'
wp option delete 'company_name'
wp option delete 'company_address'
wp option delete 'company_number'
wp option delete 'company_postcode'
wp option delete 'company_telephone'
wp option delete 'company_accounts_email'
wp option delete 'sales_tax_name'
wp option delete 'sales_tax_reg'
wp option delete 'secondary_sales_tax_name'
wp option delete 'secondary_sales_tax_reg'
wp option delete 'company_invoice_terms'
wp option delete 'cqpim_invoice_prefix'
wp option delete 'client_invoice_footer'
wp option delete 'cqpim_custom_fields_invoice'
wp option delete 'cqpim_clean_main_colour'
wp option delete 'cqpim_cool_main_colour'
wp option delete 'client_invoice_paypal_address'
wp option delete 'client_invoice_allow_partial'
wp option delete 'cqpim_paypal_enable_sandbox'
wp option delete 'cqpim_invoice_template'
wp option delete 'google_recaptcha_site_key'
wp option delete 'cqpim_login_reg'
wp option delete 'default_contract_text'
wp option delete 'company_sales_email'
wp option delete 'secondary_sales_tax_rate'
wp option delete 'contract_acceptance_text'
wp option delete 'invoice_workflow'
wp option delete 'enable_quote_terms'
wp option delete 'quote_acceptance_text'
wp option delete 'cqpim_login_reg_company'
wp option delete 'cqpim_custom_fields_task'
wp option delete 'cqpim_dash_logo'
wp option delete 'cqpim_dash_bg'
wp option delete 'client_login_bg_color'
wp option delete 'cqpim_enable_messaging'
wp option delete 'google_recaptcha_secret_key'
wp option delete 'client_password_reset_subject'
wp option delete 'client_password_reset_content'
wp option delete 'pto_dcreg_approve'
wp option delete 'form_reg_auto_welcome'
wp option delete 'cqpim_hide_wp_icon'
wp option delete 'cqpim_show_docs_link'
wp option delete 'auto_welcome_subject'
wp option delete 'auto_welcome_content'
wp option delete 'added_contact_subject'
wp option delete 'added_contact_content'
wp option delete 'password_reset_subject'
wp option delete 'password_reset_content'
wp option delete 'pto_creg_approve'
wp option delete 'pto_cquo_approve'
wp option delete 'form_auto_welcome'
wp option delete 'cqpim_frontend_form'
wp option delete 'quote_header'
wp option delete 'quote_footer'
wp option delete 'currency_code'
wp option delete 'currency_symbol_position'
wp option delete 'currency_symbol_space'
wp option delete 'new_quote_subject'
wp option delete 'new_quote_email'
wp option delete 'pto_rules_flushed'
wp option delete 'pto_task_status'
wp option delete 'client_dashboard_primary_color'
wp option delete 'client_dashboard_secondary_color'
wp option delete 'client_dashboard_text_color'
wp option delete 'client_dashboard_button_color'
wp option delete 'client_dashboard_link_color'
wp option delete 'client_dashboard_link_hover_color'
wp option delete 'client_dashboard_gfont'
wp option delete 'client_invoice_payment_history'
wp option delete 'currency_decimal'
wp option delete 'currency_comma'
wp option delete 'company_support_email'
wp option delete 'cqpim_piping_address'
wp option delete 'cqpim_cc_address'
wp option delete 'cqpim_html_email'
wp option delete 'cqpim_html_email_styles'
wp option delete 'company_bank_name'
wp option delete 'company_bank_sc'
wp option delete 'company_bank_ac'
wp option delete 'company_bank_iban'
wp option delete 'pto_opening'
wp option delete 'cqpim_save_dashboard_metabox_filters'
wp option delete 'auto_send_invoices'
wp option delete 'client_deposit_invoice_email'
wp option delete 'client_invoice_email'
wp option delete 'client_deposit_invoice_subject'
wp option delete 'client_invoice_subject'
wp option delete 'client_invoice_email_attach'
wp option delete 'client_invoice_after_send_remind_days'
wp option delete 'client_invoice_before_terms_remind_days'
wp option delete 'client_invoice_after_terms_remind_days'
wp option delete 'client_invoice_receipt_subject'
wp option delete 'client_invoice_receipt_email'
wp option delete 'client_invoice_overdue_email'
wp option delete 'client_invoice_overdue_subject'
wp option delete 'client_invoice_reminder_email'
wp option delete 'client_invoice_reminder_subject'
wp option delete 'client_invoice_high_priority'
wp option delete 'pto_escrow_email_address'
wp option delete 'pto_escrow_api_key'
wp option delete 'pto_escrow_inspection'
wp option delete 'new_lead_email_subject'
wp option delete 'new_lead_email_content'
wp option delete 'cqpim_new_message_content'
wp option delete 'cqpim_new_message_subject'
wp option delete 'cqpim_bounce_subject'
wp option delete 'cqpim_bounce_content'
wp option delete 'client_create_ticket_subject'
wp option delete 'client_create_ticket_email'
wp option delete 'cqpim_string_prefix'
wp option delete 'cqpim_mail_server'
wp option delete 'cqpim_mailbox_name'
wp option delete 'cqpim_mailbox_pass'
wp option delete 'cqpim_piping_delete'
wp option delete 'cqpim_create_support_on_email'
wp option delete 'cqpim_create_support_on_unknown_email'
wp option delete 'cqpim_send_piping_reject'
wp option delete 'cqpim_allowed_extensions'
wp option delete 'client_contract_email'
wp option delete 'client_contract_subject'
wp option delete 'client_message_subject'
wp option delete 'client_message_email'
wp option delete 'company_message_subject'
wp option delete 'company_message_email'
wp option delete 'quote_default_email'
wp option delete 'quote_email_subject'
wp option delete 'quote_email_pdf_attach'
wp option delete 'enable_project_creation'
wp option delete 'cqpim_bugs_auto'
wp option delete 'auto_contract'
wp option delete 'client_quote_message_subject'
wp option delete 'client_quote_message_email'
wp option delete 'company_quote_message_subject'
wp option delete 'company_quote_message_email'
wp option delete 'team_assignment_subject'
wp option delete 'team_assignment_email'
wp option delete 'pto_task_acceptance'
wp option delete 'assignment_response_subject'
wp option delete 'assignment_response_email'
wp option delete 'team_account_subject'
wp option delete 'team_account_email'
wp option delete 'team_reset_subject'
wp option delete 'team_reset_email'
wp option delete 'team_project_subject'
wp option delete 'team_project_email'
wp option delete 'cqpim_support_slug'
wp option delete 'client_update_ticket_subject'
wp option delete 'client_update_ticket_email'
wp option delete 'v4_compat_complete'
wp option delete 'v4_1_compat_complete'
wp option delete 'v4_3_compat_complete'
wp option delete 'pto_v5_0_0_compat_complete'
wp option delete 'pto_v5_0_2_compat_complete'
wp option delete 'pto_v5_0_7_compat_complete'
wp option delete 'pto_v5_0_8_compat_complete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cqpim_custom_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cqpim_custom_fields_backup_%'"
wp option delete 'auto_welcome'
wp option delete 'allow_client_currency_override'
wp option delete 'pto_escrow'
wp option delete 'allow_invoice_currency_override'
wp option delete 'allow_project_currency_override'
wp option delete 'allow_quote_currency_override'
wp option delete 'cqpim_paypal_api_username'
wp option delete 'cqpim_paypal_api_password'
wp option delete 'cqpim_paypal_api_signature'
wp option delete 'cqpim_hide_dashboard_notices'
wp option delete 'cqpim_hide_screen_options'
wp option delete 'cqpim_timezone'
wp option delete 'cqpim_bug_slug'
wp option delete 'cqpim_subs_slug'
wp option delete 'team_type'
wp option delete 'allow_supplier_currency_override'
wp option delete 'pto_shortcode_open_message'
wp option delete 'pto_shortcode_closed_message'
wp option delete 'enable_frontend_anon_quotes'
wp option delete 'enable_client_quotes'
wp option delete 'client_update_subject'
wp option delete 'client_update_email'
wp option delete 'auto_invoice'
wp option delete 'auto_update'
wp option delete 'auto_completion'
wp option delete 'client_invoice_twocheck_sid'
wp option delete 'cqpim_disable_ticket_priority'
wp option delete 'company_update_ticket_subject'
wp option delete 'company_update_ticket_email'
wp option delete 'cqpim_enable_faq_dash_accordion'
wp option delete 'gdpr_pp_page'
wp option delete 'gdpr_pp_page_check'
wp option delete 'gdpr_tc_page'
wp option delete 'gdpr_tc_page_check'
wp option delete 'gdpr_consent_text'
wp option delete 'gdpr_consent'
wp option delete 'cqpim_activate_expense_auth'
wp option delete 'cqpim_expense_auth_members'
wp option delete 'cqpim_auth_email_subject'
wp option delete 'cqpim_auth_email_content'
wp option delete 'cqpim_authorised_email_subject'
wp option delete 'cqpim_authorised_email_content'
wp option delete 'cqpim_new_bug_subject'
wp option delete 'cqpim_new_bug_content'
wp option delete 'cqpim_update_bug_subject'
wp option delete 'cqpim_update_bug_content'
wp option delete 'cqpim_wc_new_project_subject'
wp option delete 'cqpim_wc_new_project_content'
wp option delete 'cqpim_new_subscription_subject'
wp option delete 'cqpim_new_subscription_content'
wp option delete 'cqpim_new_subscription_accept_subject'
wp option delete 'cqpim_new_subscription_accept_content'
wp option delete 'cqpim_subscription_cancelled_subject'
wp option delete 'cqpim_subscription_cancelled_content'
wp option delete 'cqpim_subscription_failed_subject'
wp option delete 'cqpim_subscription_failed_content'
wp option delete 'cqpim_subscription_reminder_subject'
wp option delete 'cqpim_subscription_reminder_content'
wp option delete 'cqpim_2checkout_enable_sandbox'
wp option delete 'cqpim_twocheck_pub_key'
wp option delete 'cqpim_twocheck_priv_key'
wp option delete 'cqpim_twocheck_account'
wp option delete 'cqpim_hide_screen_options_mode'
wp option delete 'cqpim_settings_imported'
wp option delete 'cqpim_permissions'
wp option delete 'vthreeone_completed'
wp option delete 'vthree_completed'
wp option delete 'twopoint9_completed'
wp option delete 'twopoint8_completed'
wp option delete 'twopoint7five_completed'
wp option delete 'twopoint7_completed'
wp option delete 'twopoint6_completed'
wp option delete 'pto_v4_1_compat'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'online_status'
wp transient delete 'pto_lock_cap_change'
wp transient delete 'pto_saved_gfonts'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'pto_check_email_pipe'
wp cron event delete 'pto_invoice_reminders'
wp cron event delete 'pto_check_recurring_invoices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accept_rand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accept_rand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accept_rand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accept_rand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_contributors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_contributors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_contributors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_contributors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_colours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_colours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_colours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_colours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_totals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_totals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_totals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_totals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expense_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expense_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expense_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expense_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authorised'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authorised'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authorised'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authorised'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_watchers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_watchers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_watchers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_watchers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_watchers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_watchers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_watchers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_watchers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_time_spent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_time_spent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_time_spent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_time_spent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contract_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contract_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contract_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contract_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conversation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conversation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conversation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conversation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'system'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'system'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'system'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'system'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadform_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadform_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadform_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadform_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_contract'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_contract'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_contract'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_contract'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'converted_project'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'converted_project'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'converted_project'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'converted_project'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bug_project'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bug_project'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bug_project'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bug_project'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'looper'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'looper'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'looper'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'looper'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_alerts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_alerts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_alerts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_alerts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unread'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unread'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unread'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unread'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fe_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fe_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fe_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fe_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'field_frontend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'field_frontend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'field_frontend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'field_frontend'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_project_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_project_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_project_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_project_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bugs_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bugs_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bugs_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bugs_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stax_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stax_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stax_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stax_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_gw_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_gw_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_gw_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_gw_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_applicable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_applicable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_applicable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_applicable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'general_project_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'general_project_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'general_project_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'general_project_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_extras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_extras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_extras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_extras'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stax_applicable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stax_applicable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stax_applicable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stax_applicable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'milestone_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'milestone_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'milestone_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'milestone_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'escrow_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'escrow_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'escrow_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'escrow_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reset_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reset_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reset_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reset_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cqpim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cqpim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cqpim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cqpim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency_symbol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency_symbol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency_symbol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency_symbol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency_space'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency_space'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency_space'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency_space'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pto_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pto_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pto_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pto_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_retry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_retry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_retry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_retry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sub_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sub_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sub_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sub_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sub_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sub_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sub_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sub_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_invoices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_invoices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_invoices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_invoices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stax_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stax_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stax_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stax_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_project'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_project'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_project'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_project'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gf_submission_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gf_submission_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gf_submission_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gf_submission_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'member_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'member_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'member_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'member_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bug_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bug_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bug_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bug_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bug_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bug_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bug_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bug_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bug_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bug_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bug_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bug_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'closed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'closed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'closed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'closed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'milestone_toggles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'milestone_toggles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'milestone_toggles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'milestone_toggles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'offset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'offset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'offset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'offset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'projectopia-core'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'projectopia-core'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'projectopia-core'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'projectopia-core'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gravity_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gravity_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gravity_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gravity_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_requested'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_requested'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_requested'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_requested'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'supplier_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'supplier_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'supplier_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'supplier_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duplicate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duplicate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duplicate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duplicate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'test_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'test_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'test_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'test_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title_set'"
