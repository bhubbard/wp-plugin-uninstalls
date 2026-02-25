-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbpdisablebbpnotificationallfeature', 'newtopicemail', 'newreplyemail', 'bbpress_notify_newreply_email_subject', 'bbpress_notify_newreply_email_body');

