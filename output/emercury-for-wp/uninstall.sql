-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emercury_form_add_subscriber_comment', 'emercury_form_select_list_subscriber_comment', 'emercury_form_add_subscriber_signup', 'emercury_form_select_list_subscriber_signup', 'emercury_form_email', 'emercury_forms_sec_id');

