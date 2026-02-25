-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpnesi_mailgun_api_key', 'simpnesi_mailgun_domain', 'simpnesi_mailing_list', 'simpnesi_recaptcha_site_key', 'simpnesi_recaptcha_secret_key', 'simpnesi_recaptcha_threshold');

