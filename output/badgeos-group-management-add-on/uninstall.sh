#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'badgeos_group_management_teacher_role'
wp option delete 'badgeos_group_management_student_role'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'school_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'school_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'school_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'school_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'teacher_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'teacher_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'teacher_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'teacher_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_invite_codes_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_invite_codes_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_invite_codes_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_invite_codes_group_id'"
