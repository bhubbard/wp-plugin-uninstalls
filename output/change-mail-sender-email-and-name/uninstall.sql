-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mail_sender_modifier_id', 'mail_sender_modifier_email_id');

