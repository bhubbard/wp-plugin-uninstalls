#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'upr_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upr_post_review_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upr_post_review_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upr_post_review_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upr_post_review_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upr_post_review_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upr_post_review_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upr_post_review_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upr_post_review_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upr_post_review_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upr_post_review_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upr_post_review_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upr_post_review_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upr_post_review_positives'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upr_post_review_positives'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upr_post_review_positives'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upr_post_review_positives'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upr_post_review_negatives'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upr_post_review_negatives'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upr_post_review_negatives'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upr_post_review_negatives'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upr_review_criteria_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upr_review_criteria_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upr_review_criteria_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upr_review_criteria_group'"
