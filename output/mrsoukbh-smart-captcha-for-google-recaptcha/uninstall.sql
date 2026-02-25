-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrsoukbh_smart_captcha_for_google_recaptcha_settings', 'mrsoukbh_smart_captcha_for_google_recaptcha_file_hashes');

