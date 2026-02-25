-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdwc_all_emails_to', 'mdwc_show_in_wp_menu', 'mdwc_debug_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ical', 'alt_body', 'from', 'from_name', 'message', 'to', 'subject', 'headers', 'attachments', 'email_id', 'email_title', 'customer_email', 'email_object');
DELETE FROM wp_usermeta WHERE meta_key IN ('ical', 'alt_body', 'from', 'from_name', 'message', 'to', 'subject', 'headers', 'attachments', 'email_id', 'email_title', 'customer_email', 'email_object');
DELETE FROM wp_termmeta WHERE meta_key IN ('ical', 'alt_body', 'from', 'from_name', 'message', 'to', 'subject', 'headers', 'attachments', 'email_id', 'email_title', 'customer_email', 'email_object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ical', 'alt_body', 'from', 'from_name', 'message', 'to', 'subject', 'headers', 'attachments', 'email_id', 'email_title', 'customer_email', 'email_object');

