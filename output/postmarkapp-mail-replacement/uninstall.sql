-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pm_wp_mail_address', 'pm_wp_mail_type', 'pm_wp_mail_db_version', 'pm_wp_mail_key', 'pm_wp_mail_activate');

