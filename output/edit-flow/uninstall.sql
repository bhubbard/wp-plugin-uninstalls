-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edit_flow_calendar_enabled', 'edit_flow_status_dropdown_visible', 'edit_flow_custom_status_default_status', 'edit_flow_dashboard_widgets_enabled', 'edit_flow_post_status_widget_enabled', 'edit_flow_myposts_widget_enabled', 'edit_flow_quickpitch_widget_enabled', 'edit_flow_notifications_enabled', 'edit_flow_always_notify_admin', 'edit_flow_story_budget_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('notification_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('notification_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('notification_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('notification_list');

