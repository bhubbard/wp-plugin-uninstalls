#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'badgeos_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_submission_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_submission_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_submission_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_submission_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_earned_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_earned_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_earned_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_earned_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_achievement_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_achievement_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_achievement_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_achievement_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_skipped_achievements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_skipped_achievements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_skipped_achievements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_skipped_achievements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_skipped_ranks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_skipped_ranks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_skipped_ranks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_skipped_ranks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_point_plural_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_point_plural_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_point_plural_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_point_plural_name'"
