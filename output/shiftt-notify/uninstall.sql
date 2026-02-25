-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shiftt_notify_appid', 'shiftt_notify_appsecret', 'shiftt_notify_wxtemplateid', 'shiftt_notify_author_openid');

