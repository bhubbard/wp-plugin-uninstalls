-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_smtp_mail_configuration', 'smart_smtp_secret_key', 'smart_smtp_secret_iv', 'smart_smtp_provider_type', 'smart_smtp_fallback_provider_type', 'smart_smtp_is_fallback_enabled', 'smart_smtp_brevo_mailer_validation');

