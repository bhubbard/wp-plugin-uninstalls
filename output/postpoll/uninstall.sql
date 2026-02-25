-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'postpoll_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('poll_options', 'camps_options', 'sendemail_options', 'message_options', 'anonimousvoter_options', 'typeofselect_options', 'showresult', 'onlyuser', 'savecookie', 'useimage', 'postpoll-votes');
DELETE FROM wp_usermeta WHERE meta_key IN ('poll_options', 'camps_options', 'sendemail_options', 'message_options', 'anonimousvoter_options', 'typeofselect_options', 'showresult', 'onlyuser', 'savecookie', 'useimage', 'postpoll-votes');
DELETE FROM wp_termmeta WHERE meta_key IN ('poll_options', 'camps_options', 'sendemail_options', 'message_options', 'anonimousvoter_options', 'typeofselect_options', 'showresult', 'onlyuser', 'savecookie', 'useimage', 'postpoll-votes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('poll_options', 'camps_options', 'sendemail_options', 'message_options', 'anonimousvoter_options', 'typeofselect_options', 'showresult', 'onlyuser', 'savecookie', 'useimage', 'postpoll-votes');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'postpoll-votes-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'postpoll-votes-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'postpoll-votes-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'postpoll-votes-%';

