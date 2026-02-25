-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcf_recaptcha_apikey', 'mcf_recaptcha_secret', 'mcf_sender_email', 'mcf_recipient_email');

