-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('status_auto_res', 'responder_attachment', 'auto_responder_subject', 'auto_responder_message', 'form_code', 'user_email', 'mail_content', 'submit_txt', 'redirect_url', 'messages');
DELETE FROM wp_usermeta WHERE meta_key IN ('status_auto_res', 'responder_attachment', 'auto_responder_subject', 'auto_responder_message', 'form_code', 'user_email', 'mail_content', 'submit_txt', 'redirect_url', 'messages');
DELETE FROM wp_termmeta WHERE meta_key IN ('status_auto_res', 'responder_attachment', 'auto_responder_subject', 'auto_responder_message', 'form_code', 'user_email', 'mail_content', 'submit_txt', 'redirect_url', 'messages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('status_auto_res', 'responder_attachment', 'auto_responder_subject', 'auto_responder_message', 'form_code', 'user_email', 'mail_content', 'submit_txt', 'redirect_url', 'messages');

