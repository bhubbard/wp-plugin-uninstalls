-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wprm_send_address', 'wprm_thanks_page_url', 'wprm_from_address', 'wprm_send_subject', 'wprm_send_body', 'wprm_reply_mail', 'wprm_send_name', 'wprm_thanks_subject', 'wprm_thanks_body', 'wprm_thanks_body_signature', 'wprm_form_html');
DELETE FROM wp_usermeta WHERE meta_key IN ('wprm_send_address', 'wprm_thanks_page_url', 'wprm_from_address', 'wprm_send_subject', 'wprm_send_body', 'wprm_reply_mail', 'wprm_send_name', 'wprm_thanks_subject', 'wprm_thanks_body', 'wprm_thanks_body_signature', 'wprm_form_html');
DELETE FROM wp_termmeta WHERE meta_key IN ('wprm_send_address', 'wprm_thanks_page_url', 'wprm_from_address', 'wprm_send_subject', 'wprm_send_body', 'wprm_reply_mail', 'wprm_send_name', 'wprm_thanks_subject', 'wprm_thanks_body', 'wprm_thanks_body_signature', 'wprm_form_html');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wprm_send_address', 'wprm_thanks_page_url', 'wprm_from_address', 'wprm_send_subject', 'wprm_send_body', 'wprm_reply_mail', 'wprm_send_name', 'wprm_thanks_subject', 'wprm_thanks_body', 'wprm_thanks_body_signature', 'wprm_form_html');

