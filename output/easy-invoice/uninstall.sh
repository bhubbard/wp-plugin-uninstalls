#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_invoice_installed'
wp option delete 'easy_invoice_version'
wp option delete 'easy_invoice_migration_completed'
wp option delete 'easy_invoice_paypal_email'
wp option delete 'easy_invoice_paypal_mode'
wp option delete 'easy_invoice_payment_methods'
wp option delete 'easy_invoice_payment_reminder_days'
wp option delete 'easy_invoice_last_invoice_template'
wp option delete 'easy_invoice_last_quote_template'
wp option delete 'easy_invoice_currency_code'
wp option delete 'easy_invoice_quote_accept_button'
wp option delete 'easy_invoice_quote_accept_action'
wp option delete 'easy_invoice_quote_accept_text'
wp option delete 'easy_invoice_quote_accepted_message'
wp option delete 'easy_invoice_quote_declined_message'
wp option delete 'easy_invoice_pro_restrict_quote_to_client'
wp option delete 'easy_invoice_payment_gateway_order'
wp option delete 'easy_invoice_invoice_prefix'
wp option delete 'easy_invoice_next_invoice_number'
wp option delete 'easy_invoice_invoice_due_days'
wp option delete 'easy_invoice_currency_symbol'
wp option delete 'easy_invoice_currency_position'
wp option delete 'easy_invoice_currency_symbol_type'
wp option delete 'easy_invoice_decimal_separator'
wp option delete 'easy_invoice_thousands_separator'
wp option delete 'easy_invoice_decimal_precision'
wp option delete 'easy_invoice_date_format'
wp option delete 'easy_invoice_email_from_name'
wp option delete 'easy_invoice_email_from_address'
wp option delete 'easy_invoice_enable_email_styling'
wp option delete 'easy_invoice_bcc_admin'
wp option delete 'easy_invoice_admin_email'
wp option delete 'easy_invoice_invoice_email_enabled'
wp option delete 'easy_invoice_invoice_email_subject'
wp option delete 'easy_invoice_invoice_email_body'
wp option delete 'easy_invoice_quote_email_enabled'
wp option delete 'easy_invoice_quote_email_subject'
wp option delete 'easy_invoice_quote_email_body'
wp option delete 'easy_invoice_payment_email_enabled'
wp option delete 'easy_invoice_payment_email_subject'
wp option delete 'easy_invoice_payment_email_body'
wp option delete 'easy_invoice_pro_payment_reminder_subject'
wp option delete 'easy_invoice_pro_payment_reminder_body'
wp option delete 'easy_invoice_company_name'
wp option delete 'easy_invoice_company_email'
wp option delete 'easy_invoice_payment_terms'
wp option delete 'easy_invoice_quote_show_adjust_field'
wp option delete 'easy_invoice_invoice_show_adjust_field'
wp option delete 'easy_invoice_invoice_starting_number'
wp option delete 'easy_invoice_invoice_terms_conditions'
wp option delete 'easy_invoice_invoice_footer_text'
wp option delete 'easy_invoice_quote_prefix'
wp option delete 'easy_invoice_quote_starting_number'
wp option delete 'easy_invoice_quote_terms_conditions'
wp option delete 'easy_invoice_quote_footer_text'
wp option delete 'easy_invoice_quote_decline_reason_required'
wp option delete 'easy_invoice_next_quote_number'
wp option delete 'easy_invoice_flush_rewrite_rules'
wp option delete 'easy_invoice_post_types_registered'
wp option delete 'easy_invoice_last_rewrite_flush'
wp option delete 'easy_invoice_company_address'
wp option delete 'easy_invoice_company_phone'
wp option delete 'easy_invoice_currency_symbol_position'
wp option delete 'easy_invoice_tax_enabled'
wp option delete 'easy_invoice_tax_entry_method'
wp option delete 'easy_invoice_tax_rate'
wp option delete 'easy_invoice_tax_name'
wp option delete 'easy_invoice_company_website'
wp option delete 'easy_invoice_company_logo'
wp option delete 'easy_invoice_tax_number'
wp option delete 'easy_invoice_migration_skipped'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed'"
wp option delete 'easy_invoice_migration_running'
wp option delete 'easy_invoice_migration_completed_time'
wp option delete 'easy_invoice_migration_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_invoice_client_user_mapping_%'"
wp option delete 'easy_invoice_migration_summary'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_invoice_migration_post_mapping_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_invoice_migration_summary_%'"
wp option delete 'easy_invoice_settings_migrated'
wp option delete 'easy_invoice_payment_gateways'
wp option delete 'easy_invoice_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_invoice_gateway_display_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_invoice_%'"
wp option delete 'easy_invoice_email_reply_to'
wp option delete 'easy_invoice_email_reply_to_name'
wp option delete 'easy_invoice_email_logo'
wp option delete 'easy_invoice_email_footer_text'
wp option delete 'easy_invoice_reminder_subject'
wp option delete 'easy_invoice_reminder_body'
wp option delete 'easy_invoice_quote_accepted_subject'
wp option delete 'easy_invoice_quote_accepted_body'
wp option delete 'easy_invoice_quote_declined_subject'
wp option delete 'easy_invoice_quote_declined_body'
wp option delete 'easy_invoice_pro_enable_secure_links'
wp option delete 'easy_invoice_pro_subscription_enabled'
wp option delete 'easy_invoice_draft_invoices_fixed'
wp option delete 'easy_invoice_quotes_slugs_fixed_v3'
wp option delete 'easy_invoice_quotes_published_v1'

# Clear Cron Jobs
wp cron event delete 'easy_invoice_payment_reminder'
wp cron event delete 'easy_invoice_quote_expiration_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_invoice_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_invoice_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_invoice_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_invoice_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_quote_quote_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_quote_quote_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_quote_quote_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_quote_quote_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_additional_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_additional_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_additional_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_additional_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_currency_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_currency_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_currency_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_currency_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bank_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bank_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bank_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bank_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bank_payment_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bank_payment_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bank_payment_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bank_payment_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bank_payment_proof'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bank_payment_proof'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bank_payment_proof'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bank_payment_proof'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheque_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheque_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheque_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheque_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheque_bank_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheque_bank_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheque_bank_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheque_bank_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheque_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheque_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheque_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheque_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheque_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheque_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheque_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheque_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheque_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheque_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheque_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheque_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_rejection_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_rejection_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_rejection_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_rejection_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_rejection_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_rejection_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_rejection_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_rejection_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_rejection_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_rejection_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_rejection_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_rejection_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_reminder_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_reminder_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_reminder_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_reminder_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_converted_from_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_converted_from_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_converted_from_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_converted_from_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_quote_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_quote_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_quote_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_quote_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issue_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issue_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issue_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issue_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_due_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_due_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_due_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_due_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency_symbol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency_symbol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency_symbol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency_symbol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_invoice_business_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_invoice_business_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_invoice_business_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_invoice_business_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quote_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quote_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quote_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quote_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_quote_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_quote_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_quote_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_quote_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_original_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_original_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_original_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_original_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_business_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_business_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_business_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_business_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_extra_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_extra_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_extra_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_extra_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_client_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_client_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_client_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_client_vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_original_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_original_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_original_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_original_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_original_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_client_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_client_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_client_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_client_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_payment_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_payment_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_payment_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_payment_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_easy_invoice_payment_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_easy_invoice_payment_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_easy_invoice_payment_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easy_invoice_payment_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parent_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parent_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parent_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parent_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_quote_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_quote_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_quote_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_quote_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_quote_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_quote_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_quote_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_quote_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bank_payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bank_payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bank_payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bank_payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheque_submission_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheque_submission_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheque_submission_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheque_submission_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_internal_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_internal_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_internal_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_internal_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_currency_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_currency_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_currency_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_currency_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_calculation_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_calculation_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_calculation_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_calculation_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_invoice_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_invoice_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_invoice_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_invoice_total'"
