-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'erwc_opt_salt', 'erwc_opt_codes_total', 'erwc_opt_ip_comparing_status_default', 'erwc_opt_cookie_searching_status_default', 'erwc_opt_auth_reliable_status', 'erwc_opt_auth_not_reliable_status', 'erwc_opt_enable', 'erwc_opt_interface_referral_codes_dashboard', 'erwc_authenticity_status_terms', 'erwc_referral_checking_terms', 'erwc_opt_code_enabled', 'erwc_opt_code_reward_type', 'erwc_opt_code_reward_value', 'erwc_opt_code_coupon', 'erwc_opt_code_coupon_apply', 'erwc_opt_code_coupon_copy_restrictions', 'erwc_opt_referee_usage_limit', 'erwc_opt_referral_status', 'c', 'erwc_referral_status_terms', 'recently_activated');
DELETE FROM wp_options WHERE option_name LIKE 'erwc_auth_checking_enable_%';
DELETE FROM wp_options WHERE option_name LIKE 'erwc_auth_checking_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_erwc_referrer_id', 'billing_email', '_erwc_checking_reports', '_erwc_referrer_code', '_erwc_total_reward_value', '_erwc_order_id', '_order_currency', '_erwc_currency', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_erwc_referrer_id', 'billing_email', '_erwc_checking_reports', '_erwc_referrer_code', '_erwc_total_reward_value', '_erwc_order_id', '_order_currency', '_erwc_currency', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_erwc_referrer_id', 'billing_email', '_erwc_checking_reports', '_erwc_referrer_code', '_erwc_total_reward_value', '_erwc_order_id', '_order_currency', '_erwc_currency', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_erwc_referrer_id', 'billing_email', '_erwc_checking_reports', '_erwc_referrer_code', '_erwc_total_reward_value', '_erwc_order_id', '_order_currency', '_erwc_currency', '_wp_page_template');

