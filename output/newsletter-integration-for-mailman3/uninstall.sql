-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter_integration_for_mailman3_options', 'newsletter_integration_for_mailman3_captchasecret', 'newsletter_integration_for_mailman3_captchasitekey', 'newsletter_integration_for_mailman3_mailman_email');

