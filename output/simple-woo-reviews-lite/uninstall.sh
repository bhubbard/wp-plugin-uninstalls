#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swr_sync_opt'
wp option delete 'swr_general_opt'
wp option delete 'swr_captcha_opt'
wp option delete 'swr_design_opt'
wp option delete 'swr_popup_review_opt'
wp option delete 'swr_order_product_review_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swr_comment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swr_comment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swr_comment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swr_comment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swr_comment_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swr_comment_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swr_comment_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swr_comment_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swr_previous_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swr_previous_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swr_previous_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swr_previous_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swr_order_prod_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swr_order_prod_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swr_order_prod_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swr_order_prod_review_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swr_customer_prof_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swr_customer_prof_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swr_customer_prof_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swr_customer_prof_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
