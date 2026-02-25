-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('receiver_email', 'sender_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pjcf_subject', 'pjcf_email', 'pjcf_fname', 'pjcf_lname', 'pjcf_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('pjcf_subject', 'pjcf_email', 'pjcf_fname', 'pjcf_lname', 'pjcf_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('pjcf_subject', 'pjcf_email', 'pjcf_fname', 'pjcf_lname', 'pjcf_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pjcf_subject', 'pjcf_email', 'pjcf_fname', 'pjcf_lname', 'pjcf_message');

