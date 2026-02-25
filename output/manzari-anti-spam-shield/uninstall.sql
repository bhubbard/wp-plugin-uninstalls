-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('manzari_bad_words', 'manzari_enable_recaptcha', 'manzari_recaptcha_sitekey', 'manzari_recaptcha_secret', 'manzari_spam_blocked_total', 'manzari_recaptcha_type', 'manzari_email_alerts');

