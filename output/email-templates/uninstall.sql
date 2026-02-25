-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post-smtp-recommendation-notice-hidden', 'post_smtp_global_recommendation_notice_hidden', 'woocommerce_email_footer_text', 'mailtpl_woomail', 'active_sitewide_plugins', 'woocommerce_email_background_color', 'woocommerce_email_base_color', 'mailtpl_opts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_customer_user', 'billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_customer_user', 'billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_customer_user', 'billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_customer_user', 'billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');

