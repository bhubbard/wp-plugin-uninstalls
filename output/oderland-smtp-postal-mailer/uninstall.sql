-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oderland_smtp_postal_mailer_version', 'oderland_smtp_postal_mailer', 'oderland_smtp_postal_mailer_old_plugin_handled', 'smtp_postal', 'smtp_postal_version', 'smtp_postal_notices', 'oderland_smtp_postal_mailer_notices');

