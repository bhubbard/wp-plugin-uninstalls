-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_rsvp_mail_send_method', 'em_attendee_fields_enabled', 'dbem_mail_sender_name', 'dbem_mail_sender_address', 'dbem_smtp_host', 'dbem_rsvp_mail_port', 'dbem_smtp_username', 'dbem_smtp_password', 'dbem_smtp_html', 'dbem_smtp_html_br', 'dbem_rsvp_mail_SMTPAuth', 'dbem_bookings_double', 'dbem_bookings_currency', 'dbem_data_privacy_consent_text', 'stonehenge_forums', 'em_email_users', 'dbem_smtp_encryption', 'dbem_smtp_autotls', 'stonehenge_creations_plugins_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_license';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_attendee_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_attendee_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_attendee_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_attendee_form');

