-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('softech_forms_db_version', 'softech_smtp_host', 'softech_smtp_port', 'softech_smtp_username', 'softech_smtp_password', 'softech_smtp_encryption', 'softech_smtp_from_email', 'softech_smtp_from_name');

