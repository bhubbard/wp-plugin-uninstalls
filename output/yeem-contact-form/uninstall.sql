-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yeem_your_name', 'yeem_sender_email_address', 'yeem_email_subject', 'yeem_confirmation_msg', 'yeem_email_msg', 'yeem_form_elements');

