-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FWPN_secret_key', 'FWPN_server_url', 'fwpn_db_version', 'apiKey', 'authDomain', 'databaseURL', 'projectId', 'storageBucket', 'messagingSenderId', 'eww_epush', 'subscriber', 'default_post', 'subscriber_api', 'Serverkey', 'Notify_Title', 'Notify_logo', 'Notify_Thanks', 'Notify_Description', 'groupkey', 'groupname', 'post_list', 'sample_license_key', 'Custom_Notify_Title', 'Custom_Notify_Body', 'Custom_Notify_Link', 'Custom_Notify_logo', 'push_deactivated_on', 'push_activated_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('do_not_send_push_notifications_for_this_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('do_not_send_push_notifications_for_this_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('do_not_send_push_notifications_for_this_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('do_not_send_push_notifications_for_this_post');

