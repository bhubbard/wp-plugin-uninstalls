-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publishpress_statuses_version', 'publishpress_status_positions', 'presspermit_privacy_statuses_enabled', 'publishpress_statuses_processed_roles', 'publishpress_custom_status_options', 'pp_statuses_archived_term_properties', 'pp_statuses_force_planner_import', 'pp_statuses_original_archived_term_properties', 'pp_statuses_queued_term_properties', 'publishpress_statuses_planner_import_gmt', 'publishpress_statuses_planner_import', 'pp_statuses_set_backup_props', 'pp_statuses_restore_backup_colors', 'pp_statuses_restore_backup_icons', 'pp_statuses_restore_backup_labels', 'pp_statuses_restore_backup_post_types', 'pp_statuses_restore_autobackup_colors', 'pp_statuses_restore_autobackup_icons', 'pp_statuses_restore_autobackup_labels', 'pp_statuses_restore_autobackup_post_types', 'pp_statuses_default_colors', 'pp_statuses_default_icons', 'pp_statuses_default_labels', 'pp_statuses_default_post_types', 'pp_statuses_default_planner_colors', 'pp_statuses_default_planner_icons', 'pp_statuses_force_status_control_import', 'pp_statuses_skip_status_control_import', 'publishpress_version', 'pps_version', 'publishpress_statuses_planner_import_args', 'publishpress_disabled_statuses', 'publishpress_statuses_status_control_import', 'presspermit_status_order', 'presspermit_status_parent', 'presspermit_status_post_types', 'presspermit_custom_conditions_post_status', 'publishpress_archived_status_positions', 'publishpress_statuses_planner_import_completed', 'publishpress_statuses_planner_original_import', 'publishpress_statuses_activate', 'publishpress_statuses_num_roles', 'edit_flow_version', 'classic-editor-replace', 'active_sitewide_plugins', 'publishpress_statuses_maintenance');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scheduled_status', 'status_parent', 'post_type', 'labels', '_pp_statuses_last_main_status', '_pp_original_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scheduled_status', 'status_parent', 'post_type', 'labels', '_pp_statuses_last_main_status', '_pp_original_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scheduled_status', 'status_parent', 'post_type', 'labels', '_pp_statuses_last_main_status', '_pp_original_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scheduled_status', 'status_parent', 'post_type', 'labels', '_pp_statuses_last_main_status', '_pp_original_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%';

