#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lac_import_settings'
wp option delete 'lac_general_settings'
wp option delete 'lac_connection_settings'
wp option delete 'lac_sso_settings'

# Clear Cron Jobs
wp cron event delete 'lac_import_courses_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lac_moodle_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lac_moodle_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lac_moodle_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lac_moodle_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lac_enrolments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lac_enrolments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lac_enrolments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lac_enrolments'"
