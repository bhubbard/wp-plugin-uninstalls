-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conversations_db_version', 'conversations_template_folder', 'conversations_email_from', 'conversations_end_users_login_page_slug', 'conversations_responders_login_page_slug');
DELETE FROM wp_options WHERE option_name LIKE 'convx_temp_password_responder_%';
DELETE FROM wp_options WHERE option_name LIKE 'conversations_timediff_%';
DELETE FROM wp_options WHERE option_name LIKE 'conversations_last_login_%';
DELETE FROM wp_options WHERE option_name LIKE 'conversations_convxns_sort_method_%';
DELETE FROM wp_options WHERE option_name LIKE 'conversations_convxns_unread_on_top_%';

