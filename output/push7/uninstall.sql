-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('push7_appno', 'push7_sdk_enabled', 'push7_apikey', 'push7_blog_title', 'push7_rpid_dict', 'push7_sslverify_disabled');
DELETE FROM wp_options WHERE option_name LIKE 'push7_push_pt_%';
DELETE FROM wp_options WHERE option_name LIKE 'push7_push_ctg_%';

