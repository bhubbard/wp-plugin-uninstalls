-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nmconvo_allow_attachment', 'nmconvo_size_limit', 'nmconvo_file_ext', 'nmconvo_file_limit', 'nmconvo_db_version', 'nmconvo_roles', 'nmconvo_notify_user', 'nmconvo_email_subject', 'nmconvo_email_message', 'nmconvo_sent_message', 'nmconvo_delete_message', 'nmconvo_off_bootstrap', 'nmconvo_convo_page');

