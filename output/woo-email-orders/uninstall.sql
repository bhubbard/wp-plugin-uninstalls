-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_email_digest_intro_text', 'wc_settings_email_digest_recipient');

