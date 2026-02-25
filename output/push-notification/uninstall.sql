-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('push_notification_settings', 'push_notification_auth_settings', 'pn_website_token_ids', 'push_notification_details_settings', 'pwaforwp_settings', 'push_notification_older_version', 'push_notification_pro_checker');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pnwoo_notification_token', 'um_new_notifications', 'pn_send_notification_on_post', 'dismissed_wp_pointers', '_group_id', 'peepso_pn_notification_token_id', 'buddyboss_pn_notification_token_id', 'gravity_pn_notification_token_id', 'fluent_community_pn_notification_token_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pnwoo_notification_token', 'um_new_notifications', 'pn_send_notification_on_post', 'dismissed_wp_pointers', '_group_id', 'peepso_pn_notification_token_id', 'buddyboss_pn_notification_token_id', 'gravity_pn_notification_token_id', 'fluent_community_pn_notification_token_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pnwoo_notification_token', 'um_new_notifications', 'pn_send_notification_on_post', 'dismissed_wp_pointers', '_group_id', 'peepso_pn_notification_token_id', 'buddyboss_pn_notification_token_id', 'gravity_pn_notification_token_id', 'fluent_community_pn_notification_token_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pnwoo_notification_token', 'um_new_notifications', 'pn_send_notification_on_post', 'dismissed_wp_pointers', '_group_id', 'peepso_pn_notification_token_id', 'buddyboss_pn_notification_token_id', 'gravity_pn_notification_token_id', 'fluent_community_pn_notification_token_id');

