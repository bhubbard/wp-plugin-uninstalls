-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcdp_fee_recovery', 'wcdp_compatibility_mode', 'wcdp_fee_recovery_values', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_registration_generate_password', 'wcdp_secondary_color', 'wcdp_main_color', 'wcdp_error_color', 'wcdp_min_amount', 'wcdp_max_amount', 'wcdp_multiple_in_cart', 'woocommerce_feature_product_block_editor_enabled', 'woocommerce_email_footer_text', 'wcdp_disable_order_notes', 'woocommerce_analytics_enabled', 'active_sitewide_plugins', 'wcdp_enable_checkout_checkbox', 'wcdp_transient_cache_keys', 'wcdp_lb_title', 'wcdp_lb_subtitle', 'wcdp_lb_title_checked', 'wcdp_lb_title_unchecked', 'wcdp_lb_subtitle_checked', 'wcdp_lb_subtitle_unchecked', 'wcdp_checkout_checkbox_text', 'mwb_sfw_cancel_subscription_for_customer', 'woocommerce_weight_unit', 'wcdp_redirect_to_cart', 'wcdp_max_range', 'wcdp_contribution_title', 'wcdp_choose_amount_title', 'wcdp_branding', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_tax_total_display', 'woocommerce_db_version', 'wcdp_feedback_send');
DELETE FROM wp_options WHERE option_name LIKE 'wcdp_order_counter_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_donable', 'wcdp_total_revenue', 'wcdp-settings[wcdp_fundraising_goal]', 'wcdp-settings[wcdp_fundraising_end_date]', 'dismissed_wcdp_newsletter_notice_notice', 'mwb_schedule_start', 'mwb_subscription_status', 'mwb_next_payment_date', 'mwb_susbcription_trial_end', '_payment_method', 'product_name', 'product_qty', '_purchase_note', 'wcdp-settings[0]', 'wcdp-settings[1]');
DELETE FROM wp_usermeta WHERE meta_key IN ('_donable', 'wcdp_total_revenue', 'wcdp-settings[wcdp_fundraising_goal]', 'wcdp-settings[wcdp_fundraising_end_date]', 'dismissed_wcdp_newsletter_notice_notice', 'mwb_schedule_start', 'mwb_subscription_status', 'mwb_next_payment_date', 'mwb_susbcription_trial_end', '_payment_method', 'product_name', 'product_qty', '_purchase_note', 'wcdp-settings[0]', 'wcdp-settings[1]');
DELETE FROM wp_termmeta WHERE meta_key IN ('_donable', 'wcdp_total_revenue', 'wcdp-settings[wcdp_fundraising_goal]', 'wcdp-settings[wcdp_fundraising_end_date]', 'dismissed_wcdp_newsletter_notice_notice', 'mwb_schedule_start', 'mwb_subscription_status', 'mwb_next_payment_date', 'mwb_susbcription_trial_end', '_payment_method', 'product_name', 'product_qty', '_purchase_note', 'wcdp-settings[0]', 'wcdp-settings[1]');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_donable', 'wcdp_total_revenue', 'wcdp-settings[wcdp_fundraising_goal]', 'wcdp-settings[wcdp_fundraising_end_date]', 'dismissed_wcdp_newsletter_notice_notice', 'mwb_schedule_start', 'mwb_subscription_status', 'mwb_next_payment_date', 'mwb_susbcription_trial_end', '_payment_method', 'product_name', 'product_qty', '_purchase_note', 'wcdp-settings[0]', 'wcdp-settings[1]');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%]';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%]';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%]';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%]';

