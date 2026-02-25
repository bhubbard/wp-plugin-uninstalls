#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lp_calculated_rating_average_courses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpr_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpr_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpr_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpr_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpr_review_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpr_review_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpr_review_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpr_review_title'"
