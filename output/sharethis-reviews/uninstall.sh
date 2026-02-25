#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharethis_property_id'
wp option delete 'sharethis_first_product'
wp option delete 'sharethisreviews_review_section_approval'
wp option delete 'sharethisreview_posts'
wp option delete 'sharethisreviews_rating_section_symbols'
wp option delete 'sharethisreviews_impression_section_symbols'
wp option delete 'sharethisreviews_impression_section_negative'
wp option delete 'sharethisreviews_rating_section_posttype'
wp option delete 'sharethisreviews_review_section_ctacopy'
wp option delete 'sharethisreviews_review_section_ctacolor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_posttype'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharethisreview_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharethisreview_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharethisreview_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharethisreview_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharethisreview_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharethisreview_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharethisreview_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharethisreview_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharethis-hide-review-section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharethis-hide-review-section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharethis-hide-review-section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharethis-hide-review-section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharethisreview_impression'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharethisreview_impression'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharethisreview_impression'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharethisreview_impression'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sharethisreview_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sharethisreview_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sharethisreview_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sharethisreview_%'"
