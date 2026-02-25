-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcaptcha_wp_login', 'qcaptcha_wp_register', 'qcaptcha_wp_lostpassword', 'qcaptcha_wp_comment', 'qcaptcha_support_cf7', 'qcaptcha_support_wp_forms', 'qcaptcha_support_ff', 'qcaptcha_support_mc', 'qcaptcha_disable_for_admins', 'qcaptcha_disable_for_logged_in_users', 'qcaptcha_support_bp');

