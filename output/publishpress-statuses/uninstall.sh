#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publishpress_statuses_version'
wp option delete 'publishpress_status_positions'
wp option delete 'presspermit_privacy_statuses_enabled'
wp option delete 'publishpress_statuses_processed_roles'
wp option delete 'publishpress_custom_status_options'
wp option delete 'pp_statuses_archived_term_properties'
wp option delete 'pp_statuses_force_planner_import'
wp option delete 'pp_statuses_original_archived_term_properties'
wp option delete 'pp_statuses_queued_term_properties'
wp option delete 'publishpress_statuses_planner_import_gmt'
wp option delete 'publishpress_statuses_planner_import'
wp option delete 'pp_statuses_set_backup_props'
wp option delete 'pp_statuses_restore_backup_colors'
wp option delete 'pp_statuses_restore_backup_icons'
wp option delete 'pp_statuses_restore_backup_labels'
wp option delete 'pp_statuses_restore_backup_post_types'
wp option delete 'pp_statuses_restore_autobackup_colors'
wp option delete 'pp_statuses_restore_autobackup_icons'
wp option delete 'pp_statuses_restore_autobackup_labels'
wp option delete 'pp_statuses_restore_autobackup_post_types'
wp option delete 'pp_statuses_default_colors'
wp option delete 'pp_statuses_default_icons'
wp option delete 'pp_statuses_default_labels'
wp option delete 'pp_statuses_default_post_types'
wp option delete 'pp_statuses_default_planner_colors'
wp option delete 'pp_statuses_default_planner_icons'
wp option delete 'pp_statuses_force_status_control_import'
wp option delete 'pp_statuses_skip_status_control_import'
wp option delete 'publishpress_version'
wp option delete 'pps_version'
wp option delete 'publishpress_statuses_planner_import_args'
wp option delete 'publishpress_disabled_statuses'
wp option delete 'publishpress_statuses_status_control_import'
wp option delete 'presspermit_status_order'
wp option delete 'presspermit_status_parent'
wp option delete 'presspermit_status_post_types'
wp option delete 'presspermit_custom_conditions_post_status'
wp option delete 'publishpress_archived_status_positions'
wp option delete 'publishpress_statuses_planner_import_completed'
wp option delete 'publishpress_statuses_planner_original_import'
wp option delete 'publishpress_statuses_activate'
wp option delete 'publishpress_statuses_num_roles'
wp option delete 'edit_flow_version'
wp option delete 'classic-editor-replace'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'publishpress_statuses_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scheduled_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scheduled_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scheduled_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scheduled_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pp_statuses_workflow_action_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_statuses_last_main_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_statuses_last_main_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_statuses_last_main_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_statuses_last_main_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_original_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_original_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_original_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_original_status'"
