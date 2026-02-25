-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lws_cl_deactivate_comments', 'lws_cl_hide_comments', 'lwscleaner_do_not_ask_again', 'my_plugin_db_version', 'cron', 'lwscleaner_remind_me', 'lws_cl_incache_modal');
DELETE FROM wp_options WHERE option_name LIKE 'lws_cl_%';

