-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_stream_network', 'wp_stream', 'wp_stream_plugins_to_delete', 'sidebars_widgets', 'settings_errors', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_connectors';
DELETE FROM wp_options WHERE option_name LIKE '%_registered_connectors';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alert_type', 'alert_meta', 'rule');
DELETE FROM wp_usermeta WHERE meta_key IN ('alert_type', 'alert_meta', 'rule');
DELETE FROM wp_termmeta WHERE meta_key IN ('alert_type', 'alert_meta', 'rule');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alert_type', 'alert_meta', 'rule');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%columnshidden';

