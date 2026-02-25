-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_categories_enabled', 'em_cancelled_reactivated', 'dbem_bookings_email_rejected_subject', 'dbem_bookings_email_rejected_body', 'dbem_bookings_currency', 'dbem_data_privacy_consent_text', 'stonehenge_forums', 'em_email_users', 'dbem_mail_sender_name', 'dbem_mail_sender_address', 'dbem_rsvp_mail_send_method', 'dbem_smtp_host', 'dbem_rsvp_mail_port', 'dbem_smtp_username', 'dbem_smtp_password', 'dbem_smtp_encryption', 'dbem_rsvp_mail_SMTPAuth', 'dbem_smtp_autotls', 'stonehenge_creations_plugins_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_license';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_event_rsvp_date', '_event_rsvp_time', '_event_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_event_rsvp_date', '_event_rsvp_time', '_event_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_event_rsvp_date', '_event_rsvp_time', '_event_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_event_rsvp_date', '_event_rsvp_time', '_event_id');

