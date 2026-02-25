-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acn_ex_author_msg', 'acn_new_author_msg', 'acn_sender_name', 'acn_email_from', 'acn_ex_author_subject', 'acn_new_author_subject', 'acn_error');

