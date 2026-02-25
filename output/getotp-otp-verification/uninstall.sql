-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getotp_option_name');
DELETE FROM wp_options WHERE option_name LIKE '%_error_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%_crendential_error';
DELETE FROM wp_options WHERE option_name LIKE '%_subscription_error';
DELETE FROM wp_options WHERE option_name LIKE '%_quota_error';
DELETE FROM wp_options WHERE option_name LIKE '%_crendential_error_message';
DELETE FROM wp_options WHERE option_name LIKE '%_quota_error_message';
DELETE FROM wp_options WHERE option_name LIKE '%_subscription_error_message';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_otp_id', 'user_otp_activation');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_otp_id', 'user_otp_activation');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_otp_id', 'user_otp_activation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_otp_id', 'user_otp_activation');

