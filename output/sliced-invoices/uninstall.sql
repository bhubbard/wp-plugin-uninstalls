-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sliced_general', 'sliced_payments', 'sliced_translate', 'sliced_quotes', 'sliced_invoices', 'default_post_edit_rows', 'sliced_tax', 'sliced_admin_notices', 'sliced_emails', 'sliced_business', 'sliced_pdf', 'active_sitewide_plugins', 'sliced_unlocked', 'sliced_last_lock_time', 'sliced_semaphore', 'sliced_taxonomy_terms_check', 'sliced_activation_warning');
DELETE FROM wp_options WHERE option_name LIKE 'sliced_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%s';
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE 'sliced_paypal_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sliced_client_business', '_sliced_number', '_sliced_payment', '_sliced_invoice_email_sent', '_sliced_quote_email_sent', 'show_admin_bar_front', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_invoice_created', '_sliced_invoice_due', '_sliced_payment_methods', '_sliced_invoice_prefix', '_sliced_invoice_suffix', '_sliced_invoice_number', '_sliced_quote_created', '_sliced_quote_valid_until', '_sliced_quote_prefix', '_sliced_quote_suffix', '_sliced_quote_number', '_sliced_log', '_sliced_discount', 'sliced_invoice_discount', '_sliced_related_invoice_id', '_sliced_declined_reason', 'sliced_invoice_reminder_sent', '_sliced_order_number', '_sliced_client', '_sliced_discount_type', '_sliced_discount_tax_treatment', '_sliced_invoice_terms', '_sliced_quote_terms', '_sliced_items', '_sliced_description', '_sliced_currency', '_sliced_tax', '_sliced_tax_calc_method', '_sliced_tax_name', '_sliced_subscription_status', '_sliced_subscription_interval_type', '_sliced_subscription_interval_number', '_sliced_subscription_cycles_type', '_sliced_subscription_cycles_count', '_sliced_subscription_trial', '_sliced_subscription_trial_interval_type', '_sliced_subscription_trial_interval_number', '_sliced_subscription_trial_cycles_count', '_sliced_subscription_trial_amount', '_sliced_paypal_token', '_wp_page_template', 'sliced_invoice_paid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sliced_client_business', '_sliced_number', '_sliced_payment', '_sliced_invoice_email_sent', '_sliced_quote_email_sent', 'show_admin_bar_front', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_invoice_created', '_sliced_invoice_due', '_sliced_payment_methods', '_sliced_invoice_prefix', '_sliced_invoice_suffix', '_sliced_invoice_number', '_sliced_quote_created', '_sliced_quote_valid_until', '_sliced_quote_prefix', '_sliced_quote_suffix', '_sliced_quote_number', '_sliced_log', '_sliced_discount', 'sliced_invoice_discount', '_sliced_related_invoice_id', '_sliced_declined_reason', 'sliced_invoice_reminder_sent', '_sliced_order_number', '_sliced_client', '_sliced_discount_type', '_sliced_discount_tax_treatment', '_sliced_invoice_terms', '_sliced_quote_terms', '_sliced_items', '_sliced_description', '_sliced_currency', '_sliced_tax', '_sliced_tax_calc_method', '_sliced_tax_name', '_sliced_subscription_status', '_sliced_subscription_interval_type', '_sliced_subscription_interval_number', '_sliced_subscription_cycles_type', '_sliced_subscription_cycles_count', '_sliced_subscription_trial', '_sliced_subscription_trial_interval_type', '_sliced_subscription_trial_interval_number', '_sliced_subscription_trial_cycles_count', '_sliced_subscription_trial_amount', '_sliced_paypal_token', '_wp_page_template', 'sliced_invoice_paid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sliced_client_business', '_sliced_number', '_sliced_payment', '_sliced_invoice_email_sent', '_sliced_quote_email_sent', 'show_admin_bar_front', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_invoice_created', '_sliced_invoice_due', '_sliced_payment_methods', '_sliced_invoice_prefix', '_sliced_invoice_suffix', '_sliced_invoice_number', '_sliced_quote_created', '_sliced_quote_valid_until', '_sliced_quote_prefix', '_sliced_quote_suffix', '_sliced_quote_number', '_sliced_log', '_sliced_discount', 'sliced_invoice_discount', '_sliced_related_invoice_id', '_sliced_declined_reason', 'sliced_invoice_reminder_sent', '_sliced_order_number', '_sliced_client', '_sliced_discount_type', '_sliced_discount_tax_treatment', '_sliced_invoice_terms', '_sliced_quote_terms', '_sliced_items', '_sliced_description', '_sliced_currency', '_sliced_tax', '_sliced_tax_calc_method', '_sliced_tax_name', '_sliced_subscription_status', '_sliced_subscription_interval_type', '_sliced_subscription_interval_number', '_sliced_subscription_cycles_type', '_sliced_subscription_cycles_count', '_sliced_subscription_trial', '_sliced_subscription_trial_interval_type', '_sliced_subscription_trial_interval_number', '_sliced_subscription_trial_cycles_count', '_sliced_subscription_trial_amount', '_sliced_paypal_token', '_wp_page_template', 'sliced_invoice_paid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sliced_client_business', '_sliced_number', '_sliced_payment', '_sliced_invoice_email_sent', '_sliced_quote_email_sent', 'show_admin_bar_front', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_invoice_created', '_sliced_invoice_due', '_sliced_payment_methods', '_sliced_invoice_prefix', '_sliced_invoice_suffix', '_sliced_invoice_number', '_sliced_quote_created', '_sliced_quote_valid_until', '_sliced_quote_prefix', '_sliced_quote_suffix', '_sliced_quote_number', '_sliced_log', '_sliced_discount', 'sliced_invoice_discount', '_sliced_related_invoice_id', '_sliced_declined_reason', 'sliced_invoice_reminder_sent', '_sliced_order_number', '_sliced_client', '_sliced_discount_type', '_sliced_discount_tax_treatment', '_sliced_invoice_terms', '_sliced_quote_terms', '_sliced_items', '_sliced_description', '_sliced_currency', '_sliced_tax', '_sliced_tax_calc_method', '_sliced_tax_name', '_sliced_subscription_status', '_sliced_subscription_interval_type', '_sliced_subscription_interval_number', '_sliced_subscription_cycles_type', '_sliced_subscription_cycles_count', '_sliced_subscription_trial', '_sliced_subscription_trial_interval_type', '_sliced_subscription_trial_interval_number', '_sliced_subscription_trial_cycles_count', '_sliced_subscription_trial_amount', '_sliced_paypal_token', '_wp_page_template', 'sliced_invoice_paid');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email_sent';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email_sent';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email_sent';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email_sent';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_due';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_due';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_due';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_due';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_valid';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_valid';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_valid';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_valid';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_suffix';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_suffix';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_suffix';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_suffix';

