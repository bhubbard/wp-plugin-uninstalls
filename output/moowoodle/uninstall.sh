#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'moowoodle_version'
wp option delete 'moowoodle_general_settings'
wp option delete 'moowoodle_sso_settings'
wp option delete 'moowoodle_display_settings'
wp option delete 'moowoodle_tool_settings'
wp option delete 'moowoodle_synchronize_course_settings'
wp option delete 'moowoodle_synchronize_user_settings'
wp option delete 'moowoodle_log_file'
wp option delete 'moowoodle_moodle_site_name'

# Delete Transients
wp transient delete 'course_sync_running'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_moowoodle_sync_status_%' OR option_name LIKE '_site_transient_moowoodle_sync_status_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moowoodle_moodle_new_user_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moowoodle_moodle_new_user_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moowoodle_moodle_new_user_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moowoodle_moodle_new_user_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moowoodle_wordpress_new_user_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moowoodle_wordpress_new_user_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moowoodle_wordpress_new_user_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moowoodle_wordpress_new_user_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moowoodle_moodle_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moowoodle_moodle_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moowoodle_moodle_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moowoodle_moodle_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moowoodle_wordpress_user_pwd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moowoodle_wordpress_user_pwd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moowoodle_wordpress_user_pwd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moowoodle_wordpress_user_pwd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moowoodle_moodle_user_pwd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moowoodle_moodle_user_pwd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moowoodle_moodle_user_pwd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moowoodle_moodle_user_pwd'"
