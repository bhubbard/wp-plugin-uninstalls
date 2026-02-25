-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccf_username', 'ccf_caption', 'ccf_with_in_textbox', 'ccf_button', 'ccf_password', 'ccf_group', 'ccf_title', 'ccf_adminemail', 'ccf_fromemail', 'ccf_adminmail', 'ccf_adminmail_subject', 'ccf_adminmail_content', 'ccf_usermail', 'ccf_usermail_subject', 'ccf_usermail_content', 'ccf_homeurl');

