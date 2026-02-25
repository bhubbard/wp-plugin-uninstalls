-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('monzurmailer_email_templates', 'monzurmailer_email_logs', 'monzurmailer_from_name', 'monzurmailer_from_email', 'monzurmailer_footer_note', 'monzurmailer_smtp_enable', 'monzurmailer_smtp_host', 'monzurmailer_smtp_port', 'monzurmailer_smtp_username', 'monzurmailer_smtp_password', 'monzurmailer_smtp_encryption');

