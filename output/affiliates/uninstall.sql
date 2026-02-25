-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aff_status', 'aff_pname', 'aff_user_registration_enabled', 'aff_customer_registration_enabled', 'aff_user_registration_base_amount', 'aff_user_registration_amount', 'aff_user_registration_currency', 'aff_user_registration_referral_status', 'aff_default_referral_status', 'affiliates_notifications', 'aff_notify_admin', 'aff_setup_hide', 'aff_allow_auto', 'aff_allow_auto_coupons', 'aff_notify_affiliate_user', 'affiliates_plugin', 'aff_registration', 'aff_registration_terms_post_id', 'aff_use_direct', 'aff_redirect', 'aff_id_encoding', 'aff_delete_data', 'aff_delete_network_data', 'aff_cookie_timeout_days', 'aff_duplicates', 'aff_registration_fields', 'affiliates_plugin_version', 'active_sitewide_plugins', 'affiliates-init-time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('affiliates-hide-review-notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('affiliates-hide-review-notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('affiliates-hide-review-notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('affiliates-hide-review-notice');

