-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfaf_recaptcha_version', 'rfaf_recaptcha_site_key', 'rfaf_recaptcha_server_key', 'rfaf_recaptcha_language', 'rfaf_recaptcha_v3_site_key', 'rfaf_recaptcha_v3_server_key', 'rfaf_recaptcha_v3_score', 'rfaf_recaptcha_registerd_user');

