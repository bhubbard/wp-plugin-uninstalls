-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mailfrom_ii_override_default', 'wp_mailfrom_ii_override_admin', 'wp_mailfrom_ii_name', 'wp_mailfrom_ii_email', 'site_mail_from_name', 'site_mail_from_email');

