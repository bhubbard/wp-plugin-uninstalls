-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gflc_enabled', 'gflc_language_override', 'gflc_pro_provider', 'gflc_recaptcha_site_key', 'gflc_recaptcha_secret_key', 'gflc_hcaptcha_site_key', 'gflc_hcaptcha_secret_key');

