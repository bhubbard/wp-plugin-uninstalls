-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zedna_contact_form_grsitekey', 'zedna_contact_form_grsecretkey', 'zedna_contact_form_allowattachment', 'zedna_contact_form_keepattachment', 'zedna_contact_form_defaultemail', 'zedna_contact_form_defaultsubject', 'zedna_contact_form_lang_wrongmail', 'zedna_contact_form_lang_emptymessage', 'zedna_contact_form_lang_messagesent', 'zedna_contact_form_lang_messagenotsent', 'zedna_contact_form_lang_recaptcha', 'zedna_contact_form_lang_email', 'zedna_contact_form_lang_message', 'zedna_contact_form_lang_submit');

