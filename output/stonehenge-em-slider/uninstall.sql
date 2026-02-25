-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_bookings_currency', 'dbem_data_privacy_consent_text', 'stonehenge_forums', 'em_email_users', 'dbem_mail_sender_name', 'dbem_mail_sender_address', 'dbem_rsvp_mail_send_method', 'dbem_smtp_host', 'dbem_rsvp_mail_port', 'dbem_smtp_username', 'dbem_smtp_password', 'dbem_smtp_encryption', 'dbem_rsvp_mail_SMTPAuth', 'dbem_smtp_autotls', 'stonehenge_creations_plugins_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_license';

