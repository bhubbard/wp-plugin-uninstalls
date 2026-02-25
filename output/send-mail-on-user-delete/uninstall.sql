-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smoud_subject', 'add_new_email_txt', 'smoud_subject_du', 'add_new_email_txt_du');

