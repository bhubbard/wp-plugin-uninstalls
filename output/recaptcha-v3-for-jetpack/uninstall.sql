-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recaptchaforjetpack_recaptcha_site_key', 'recaptchaforjetpack_loading_option', 'recaptchaforjetpack_conditionals', 'recaptchaforjetpack_enabled_slugs', 'recaptchaforjetpack_debug_mode', 'recaptchaforjetpack_recaptcha_secret_key', 'recaptchaforjetpack_recaptcha_score', 'recaptchaforjetpack_total_submissions', 'recaptchaforjetpack_submission_stats', 'recaptchaforjetpack_submission_log');

