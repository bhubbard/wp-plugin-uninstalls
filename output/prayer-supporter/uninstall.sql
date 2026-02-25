-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('res_terms', 'res_calendar_color', 'res_color', 'res_security_plugin', 'res_security_settings', 'res_db_version', 'res_full_uninstall', 'res_incl_email', 'res_email', 'res_name', 'res_email_subject', 'res_days');

