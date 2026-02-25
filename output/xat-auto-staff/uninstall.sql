-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xas_chat_name', 'xas_chat_pass', 'xas_list_member', 'xas_mainowner_title', 'xas_owner_title', 'xas_mod_title', 'xas_member_title', 'xas_rank_title', 'xas_name_title', 'xas_user_title', 'xas_main_title');

