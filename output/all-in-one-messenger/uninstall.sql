-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_form', 'user_roles', 'facebook_callback_token', 'facebook_token', 'cf7_page', 'cf7_sender_name', 'cf7_sender_email');
DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chat_new', 'chat_step', 'chat_last_mess', 'chat_info', 'chat_source', 'chat_id', 'sender');
DELETE FROM wp_usermeta WHERE meta_key IN ('chat_new', 'chat_step', 'chat_last_mess', 'chat_info', 'chat_source', 'chat_id', 'sender');
DELETE FROM wp_termmeta WHERE meta_key IN ('chat_new', 'chat_step', 'chat_last_mess', 'chat_info', 'chat_source', 'chat_id', 'sender');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chat_new', 'chat_step', 'chat_last_mess', 'chat_info', 'chat_source', 'chat_id', 'sender');

