-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_from_address', 'woocommerce_email_from_name', 'rewrite_rules', 'active_sitewide_plugins', 'wc_settings_tab_mailchimp_info_lname', 'wc_settings_tab_mailchimp_info_address', 'wc_settings_tab_mailchimp_info_city', 'wc_settings_tab_mailchimp_info_state', 'wc_settings_tab_mailchimp_info_country', 'wc_settings_tab_mailchimp_double_optin', 'wpdesk_helper_options', 'wpdesk_tracker_notice', 'wpdesk_tracker_agree', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shopmagic_converted_from_guest', 'billing_phone', 'is_customer_note', 'billing_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shopmagic_converted_from_guest', 'billing_phone', 'is_customer_note', 'billing_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shopmagic_converted_from_guest', 'billing_phone', 'is_customer_note', 'billing_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shopmagic_converted_from_guest', 'billing_phone', 'is_customer_note', 'billing_company');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%';

