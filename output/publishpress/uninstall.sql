-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cme_custom_status_control', 'rvy_use_publishpress_notifications', 'publishpress_calendar_enabled', 'publishpress_content_overview_enabled', 'publishpress_dashboard_widgets_enabled', 'publishpress_post_status_widget_enabled', 'publishpress_myposts_widget_enabled', 'publishpress_quickpitch_widget_enabled', 'edit_flow_version', 'edit_flow_editorial_metadata_options', 'publishpress_notifications_enabled', 'publishpress_always_notify_admin', 'classic-editor-replace', 'pp_planner_activated', 'publishpress_improved_notifications_options', 'publishpress_custom_status_options');
DELETE FROM wp_options WHERE option_name LIKE 'edit_flow_%';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pp_editorial_comment_files', '_psp_default_workflow_name', '_psppno_touser', '_psppno_touserlist', '_psppno_togroup', '_psppno_togrouplist', 'logs_per_page', '_EventDuration', '_EventStartDate', '_EventStartDateUTC', '_EventEndDate', '_EventEndDateUTC');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pp_editorial_comment_files', '_psp_default_workflow_name', '_psppno_touser', '_psppno_touserlist', '_psppno_togroup', '_psppno_togrouplist', 'logs_per_page', '_EventDuration', '_EventStartDate', '_EventStartDateUTC', '_EventEndDate', '_EventEndDateUTC');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pp_editorial_comment_files', '_psp_default_workflow_name', '_psppno_touser', '_psppno_touserlist', '_psppno_togroup', '_psppno_togrouplist', 'logs_per_page', '_EventDuration', '_EventStartDate', '_EventStartDateUTC', '_EventEndDate', '_EventEndDateUTC');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pp_editorial_comment_files', '_psp_default_workflow_name', '_psppno_touser', '_psppno_touserlist', '_psppno_togroup', '_psppno_togrouplist', 'logs_per_page', '_EventDuration', '_EventStartDate', '_EventStartDateUTC', '_EventEndDate', '_EventEndDateUTC');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'psppno_workflow_channel_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'psppno_workflow_channel_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'psppno_workflow_channel_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'psppno_workflow_channel_%';

