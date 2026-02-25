-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adc_only_from_localhost', 'adc_api_user', 'adc_api_key', 'adc_enabled', 'API_KEY', 'error_no_email', 'captcha_enabled', 'error_no_captcha', 'maileon_recaptcha_enabled', 'maileon_recaptcha_secret_key', 'maileon_recaptcha_sensitivity', 'maileon_debug', 'error_invalid_captcha', 'xq_maileon_footer_enabled', 'footer_default_post_id', 'success_update_message', 'PAGE_UPDATE_OK', 'PAGE_UPDATE_ERROR', 'adc_email_field', 'adc_input_delay', 'maileon_recaptcha_site_key', 'error_update_message', 'success_message', 'PAGE_OK', 'PAGE_ERROR', 'error_maileon');

