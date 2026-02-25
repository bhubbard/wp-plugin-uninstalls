-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbv_email_validator', 'wp_mail_smtp', 'MBV_PLUGIN_VER');

