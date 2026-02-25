-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustifi_mailer_smtp_username', 'trustifi_mailer_smtp_password', 'trustifi_mailer_from_name', 'trustifi_mailer_from_email', 'trustifi_mailer_enable_encryption', 'trustifi_mailer_activated');

