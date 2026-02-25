#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpar_options'
wp option delete 'widget_recent_entries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_post_review_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_post_review_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_post_review_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_post_review_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thesis_post_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thesis_post_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thesis_post_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thesis_post_image'"
