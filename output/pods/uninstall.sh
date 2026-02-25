#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pods_framework_version_first'
wp option delete 'pods_callouts'
wp option delete 'pods_framework_version_last'
wp option delete 'pods_component_settings'
wp option delete 'pods_framework_version'
wp option delete 'pods_framework_db_version'
wp option delete 'pods_framework_upgraded_1_x'
wp option delete 'pods_version'
wp option delete 'pods_framework_upgrade_2_0'
wp option delete 'pods_framework_upgrade_2_0_0'
wp option delete 'pods_framework_upgrade_2_0_sister_ids'
wp option delete 'pods_frontier_extra_commands'
wp option delete 'active_sitewide_plugins'
wp option delete 'pods_roles'
wp option delete 'pods_disable_file_browser'
wp option delete 'pods_files_require_login'
wp option delete 'pods_files_require_login_cap'
wp option delete 'pods_disable_file_upload'
wp option delete 'pods_upload_require_login'
wp option delete 'pods_upload_require_login_cap'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pods_framework_upgrade_%'"
wp option delete 'pods_framework_upgraded'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%'"
wp option delete 'wisdom_last_track_time'
wp option delete 'wisdom_allow_tracking'
wp option delete 'wisdom_notification_times'
wp option delete 'wisdom_block_notice'
wp option delete 'wisdom_collect_email'
wp option delete 'wisdom_admin_emails'

# Clear Cron Jobs
wp cron event delete 'put_do_weekly_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pods_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pods_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pods_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pods_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sister_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sister_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sister_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sister_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'precode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'precode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'precode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'precode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_capability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_capability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_capability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_capability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roles_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roles_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roles_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roles_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'capability_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'capability_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'capability_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'capability_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_redirect_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_redirect_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_redirect_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_redirect_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pod_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pod_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pod_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pod_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'view_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'view_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'view_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'view_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pick_format_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pick_format_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pick_format_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pick_format_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pick_format_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pick_format_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pick_format_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pick_format_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_evaluate_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_evaluate_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_evaluate_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_evaluate_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_format_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_format_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_format_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_format_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_time_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_time_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_time_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_time_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_time_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_time_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_time_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_time_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number_max_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number_max_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number_max_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number_max_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number_format_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number_format_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number_format_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number_format_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paragraph_format_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paragraph_format_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paragraph_format_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paragraph_format_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text_format_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text_format_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text_format_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text_format_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_conditional_logic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_conditional_logic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_conditional_logic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_conditional_logic'"
