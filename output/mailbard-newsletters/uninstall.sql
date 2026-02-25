-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wysija_import_fields', 'widget_wysija', 'wysijey', 'wysija_log', 'wysija_msg', 'wysija_queries', 'wysija_queries_errors', 'wysicheck', 'wysija_last_scheduled_check', 'wysija_post_type_updated', 'wysija_post_type_created', 'wysija', 'wysija_schedules', 'wysija_last_php_cron_call', 'ms_wysija_bounce_cron', 'ms_wysija_sending_cron', 'wysija_dismiss_update_notice', 'wysija_check_pn', 'wysija_bounce_being_recorded', 'default_post_edit_rows', 'installation_step', 'wysija_reinstall', 'ms_wysija', 'registration');
DELETE FROM wp_options WHERE option_name LIKE 'ms_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wysija_pref', '_wp_attachment_image_alt', 'wysija_comment_subscribe');
DELETE FROM wp_usermeta WHERE meta_key IN ('wysija_pref', '_wp_attachment_image_alt', 'wysija_comment_subscribe');
DELETE FROM wp_termmeta WHERE meta_key IN ('wysija_pref', '_wp_attachment_image_alt', 'wysija_comment_subscribe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wysija_pref', '_wp_attachment_image_alt', 'wysija_comment_subscribe');

