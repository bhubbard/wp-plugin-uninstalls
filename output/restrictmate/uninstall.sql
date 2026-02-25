-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('restrictmate_do_activation_redirect', 'restrictmate_installed', 'restrictmate_version', 'restrictmate_restricted_content_message', 'restrictmate_content_excerpt', 'restrictmate_currency', 'restrictmate_gateway_manual_payment', 'restrictmate_gateway_manual_payment_title', 'restrictmate_gateway_manual_payment_description', 'restrictmate_gateway_manual_payment_account_details', 'restrictmate_email_from_name', 'restrictmate_email_from_email', 'restrictmate_email_format', 'restrictmate_invoice_heading', 'restrictmate_invoice_company_name', 'restrictmate_invoice_address_line_1', 'restrictmate_invoice_address_line_2', 'restrictmate_invoice_email', 'restrictmate_invoice_footer_text', 'restrictmate_latest_version', 'restrictmate_gateway_stripe_payment_description', 'restrictmate_invoice_restrictmate-invoice-footer_text', 'restrictmate_gateway_stripe', 'restrictmate_gateway_stripe_test_mode', 'restrictmate_gateway_stripe_test_secret_key', 'restrictmate_gateway_stripe_live_secret_key', 'restrictmate_page_id_for_thankyou', 'restrictmate_page_id_for_register', 'restrictmate_page_id_for_account', 'restrictmate_gateway_stripe_payment_title', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'restrictmate_page_id_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_restrictmate_meta_plain_text_email_content', '_restrictmate_meta_is_admin_email', 'restrictmate_user_subscriptions', '_restrictmate_meta_membership_levels', 'restrictmate_last_login', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_restrictmate_meta_plain_text_email_content', '_restrictmate_meta_is_admin_email', 'restrictmate_user_subscriptions', '_restrictmate_meta_membership_levels', 'restrictmate_last_login', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_restrictmate_meta_plain_text_email_content', '_restrictmate_meta_is_admin_email', 'restrictmate_user_subscriptions', '_restrictmate_meta_membership_levels', 'restrictmate_last_login', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_restrictmate_meta_plain_text_email_content', '_restrictmate_meta_is_admin_email', 'restrictmate_user_subscriptions', '_restrictmate_meta_membership_levels', 'restrictmate_last_login', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%membership_level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%membership_level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%membership_level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%membership_level';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%subscription_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%subscription_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%subscription_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%subscription_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%membership_expiry';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%membership_expiry';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%membership_expiry';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%membership_expiry';

