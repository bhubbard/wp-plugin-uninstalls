-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('size_of_file_wpyartik', 'display_icon_send_ticket', 'select_page_ticket', 'woocommerce_myaccount_page_id', 'position_icon_nirweb_ticket_front', 'icon_nirweb_ticket_front', 'nadurl', 'mojaz_file_upload_user_wpyar', 'template_send_ticket_email', 'active_send_mail_to_poshtiban', 'subject_mail_poshtiban_new', 'poshtiban_text_email_send', 'subject_mail_poshtiban_answer', 'poshtiban_text_email_send_answer', 'require_procut_user_wpyar', 'text_top_send_mail_nirweb_ticket', 'active_send_mail_to_user', 'subject_mail_user_new', 'user_text_email_send', 'subject_mail_user_answer', 'user_text_email_send_answer', 'nirweb_ticket_perfix');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nirweb_ads_ticket');
DELETE FROM wp_usermeta WHERE meta_key IN ('nirweb_ads_ticket');
DELETE FROM wp_termmeta WHERE meta_key IN ('nirweb_ads_ticket');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nirweb_ads_ticket');

