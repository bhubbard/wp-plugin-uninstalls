-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('farazsms_do_activation_redirect', 'farazsms_settings_options', 'farazsms_login_notify_options', 'farazsms_phonebook_options', 'farazsms_integrations_options', 'farazsms_comments_options', 'farazsms_newsletter_options', 'farazsms_woocommerce_options', 'farazsms_elementor_options', 'farazsms_edd_options', 'farazsms_aff_options', 'farazsms_membership_options', 'fsms_rss_meta_box', 'fsms_panel_expire_date', 'sent_low_remaining_days_30', 'sent_low_remaining_days_7');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('digits_phone', 'farazsms_affiliate_phone', 'digits_phone_no', 'wupp_mobile', 'sent_welcome_message', 'mobile', 'farazsms_low_credit_notify_sent_timestamp', 'sent_retention_message', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('digits_phone', 'farazsms_affiliate_phone', 'digits_phone_no', 'wupp_mobile', 'sent_welcome_message', 'mobile', 'farazsms_low_credit_notify_sent_timestamp', 'sent_retention_message', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('digits_phone', 'farazsms_affiliate_phone', 'digits_phone_no', 'wupp_mobile', 'sent_welcome_message', 'mobile', 'farazsms_low_credit_notify_sent_timestamp', 'sent_retention_message', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('digits_phone', 'farazsms_affiliate_phone', 'digits_phone_no', 'wupp_mobile', 'sent_welcome_message', 'mobile', 'farazsms_low_credit_notify_sent_timestamp', 'sent_retention_message', 'rating');

