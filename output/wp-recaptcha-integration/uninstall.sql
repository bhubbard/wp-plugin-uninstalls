-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recaptcha_flavor', 'recaptcha_theme', 'recaptcha_disable_submit', 'recaptcha_noscript', 'recaptcha_comment_use_42_filter', 'recaptcha_publickey', 'recaptcha_privatekey', 'recaptcha_language', 'recaptcha_enable_comments', 'recaptcha_enable_signup', 'recaptcha_enable_login', 'recaptcha_enable_lostpw', 'recaptcha_disable_for_known_users', 'recaptcha_lockout', 'wpcf7', 'recaptcha_enable_wc_checkout', 'recaptcha_enable_wc_order', 'recaptcha_enable_as_registration', 'recaptcha_enable_bbp_topic', 'recaptcha_enable_bbp_reply', 'recaptcha_keys_okay');

