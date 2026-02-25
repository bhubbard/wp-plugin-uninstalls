-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewp_email_delay', 'woocommerce_email_base_color', 'ewp_max_hourly_emails', 'ewp_last_ran');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ewp_referral_session', '_ewp_next_schedule', 'usage_limit', 'customer_email', 'date_expires');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ewp_referral_session', '_ewp_next_schedule', 'usage_limit', 'customer_email', 'date_expires');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ewp_referral_session', '_ewp_next_schedule', 'usage_limit', 'customer_email', 'date_expires');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ewp_referral_session', '_ewp_next_schedule', 'usage_limit', 'customer_email', 'date_expires');

