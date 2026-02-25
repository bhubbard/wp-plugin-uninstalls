#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bupr_admin_general_options'
wp option delete 'bupr_admin_settings'
wp option delete 'bupr_admin_display_options'
wp option delete 'bupr_member_type_criteria'
wp option delete 'active_sitewide_plugins'
wp option delete 'bupr_plugin_version'
wp option delete 'bupr_current_batch'

# Delete Transients
wp transient delete '_bupr_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'bupr_cron_recalculate_user_reviews_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_star_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_star_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_star_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_star_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_bp_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_bp_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_bp_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_bp_member'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bupr_anonymous_review_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bupr_anonymous_review_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bupr_anonymous_review_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bupr_anonymous_review_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bupr_aggregate_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bupr_aggregate_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bupr_aggregate_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bupr_aggregate_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bupr_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bupr_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bupr_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bupr_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bupr_last_calculated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bupr_last_calculated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bupr_last_calculated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bupr_last_calculated'"
