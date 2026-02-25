-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('omie_outgoing_mail_name_id', 'omie_outgoing_mail_email_id');

