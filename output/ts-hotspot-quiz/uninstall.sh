#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'tshoqu_deactivated_notice_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_quiz_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_quiz_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_quiz_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_quiz_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_hotspots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_hotspots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_hotspots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_hotspots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_manual_total_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_manual_total_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_manual_total_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_manual_total_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_interaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_interaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_interaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_interaction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_total_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_total_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_total_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_total_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_time_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_time_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_time_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_time_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_pass_mark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_pass_mark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_pass_mark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_pass_mark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tshoqu_question_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tshoqu_question_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tshoqu_question_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tshoqu_question_ids'"
