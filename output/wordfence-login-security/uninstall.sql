-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%.lock';
DELETE FROM wp_options WHERE option_name LIKE 'wflsbucket:%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');
DELETE FROM wp_usermeta WHERE meta_key IN ('wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');
DELETE FROM wp_termmeta WHERE meta_key IN ('wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');

