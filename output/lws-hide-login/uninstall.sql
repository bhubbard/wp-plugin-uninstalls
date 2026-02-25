-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lws_aff_new_login', 'lws_aff_new_redirection', 'lwshl_do_not_ask_again', 'lwshl_remind_me');

