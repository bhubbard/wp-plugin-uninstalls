#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rmp_options'
wp option delete 'rmp_customize_strings'
wp option delete 'rmp_security'
wp option delete 'rmp_admin_notices'
wp option delete 'rmp_bulk_rate_flag'
wp option delete 'rmp_version'
wp option delete 'rmp_license_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yolo-plugin-info-%' OR option_name LIKE '_site_transient_yolo-plugin-info-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_avg_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_avg_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_avg_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_avg_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_vote_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_vote_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_vote_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_vote_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_rating_val_sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_rating_val_sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_rating_val_sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_rating_val_sum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_feedback_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_feedback_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_feedback_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_feedback_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_feedback_val_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_feedback_val_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_feedback_val_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_feedback_val_new'"
