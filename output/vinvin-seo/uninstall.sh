#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vinvin_seo'
wp option delete 'vinvin_accepted_posttypes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vinvin_id_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vinvin_id_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vinvin_id_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vinvin_id_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hasbeenreviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hasbeenreviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hasbeenreviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hasbeenreviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratingCount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratingCount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratingCount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratingCount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reviewCount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reviewCount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reviewCount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reviewCount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_random_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_random_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_random_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_random_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_thumbnail_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_thumbnail_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_thumbnail_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_thumbnail_img'"
