-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PlayMe_recaptcha_sitekey', 'PlayMe_recaptcha_secretkey', 'playme_requests');

