-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stlsr_redirect_to_settings', 'stlsr_google_recaptcha_v2', 'stlsr_google_recaptcha_v3', 'stlsr_cf_turnstile', 'stlsr_login_captcha', 'stlsr_lostpassword_captcha', 'stlsr_register_captcha', 'stlsr_comment_captcha', 'stlsr_error_logs', 'stlsr_misc');

