#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'morphii-settings'
wp option delete 'morphii-licence'
wp option delete 'woocommerce_review_rating_verification_required'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'morphiis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'morphiis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'morphiis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'morphiis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'morphii-question-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'morphii-question-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'morphii-question-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'morphii-question-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'morphii-current-post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'morphii-current-post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'morphii-current-post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'morphii-current-post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'morphii-current-post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'morphii-current-post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'morphii-current-post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'morphii-current-post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'morphii-current-post_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'morphii-current-post_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'morphii-current-post_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'morphii-current-post_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_morphii_final_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_morphii_final_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_morphii_final_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_morphii_final_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_morphii_reviewer_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_morphii_reviewer_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_morphii_reviewer_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_morphii_reviewer_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_morphii_reviewer_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_morphii_reviewer_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_morphii_reviewer_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_morphii_reviewer_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'morphii_post_types_to_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'morphii_post_types_to_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'morphii_post_types_to_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'morphii_post_types_to_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'morphiis_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'morphiis_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'morphiis_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'morphiis_label'"
