-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pay-post-by-sms-allowed-ip-address', 'pay-post-by-sms-shortcode', 'pay-post-by-sms-keyword', 'pay-post-by-sms-price', 'pay-post-by-sms-get-phone-key', 'pay-post-by-sms-get-shortcode-key', 'pay-post-by-sms-get-message-key', 'pay-post-by-sms-get-transactionid-key', 'pay_post_by_sms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pay_post_by_sms');
DELETE FROM wp_usermeta WHERE meta_key IN ('pay_post_by_sms');
DELETE FROM wp_termmeta WHERE meta_key IN ('pay_post_by_sms');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pay_post_by_sms');

