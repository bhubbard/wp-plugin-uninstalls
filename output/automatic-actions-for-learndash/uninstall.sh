#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'traa_ldactions_all_actions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'traa_ldactions_executions_ignore_clean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'traa_ldactions_executions_ignore_clean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'traa_ldactions_executions_ignore_clean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'traa_ldactions_executions_ignore_clean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'traa_ldactions_times_executed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'traa_ldactions_times_executed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'traa_ldactions_times_executed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'traa_ldactions_times_executed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'traa_ldactions_executions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'traa_ldactions_executions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'traa_ldactions_executions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'traa_ldactions_executions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'traa_ldactions_action_course_enroll_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'traa_ldactions_action_course_enroll_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'traa_ldactions_action_course_enroll_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'traa_ldactions_action_course_enroll_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'traa_ldactions_action_group_add_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'traa_ldactions_action_group_add_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'traa_ldactions_action_group_add_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'traa_ldactions_action_group_add_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'traa_ldactions_unique_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'traa_ldactions_unique_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'traa_ldactions_unique_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'traa_ldactions_unique_code'"
