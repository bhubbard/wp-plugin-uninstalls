#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'challenge_registration_page_id'
wp option delete 'challenge_login_page_id'
wp option delete 'challenge_default_banar_img_id'
wp option delete 'challenge_default_thumbnail_img_id'
wp option delete 'challenge_options'

# Clear Cron Jobs
wp cron event delete 'challenge_send_checkpoint_start_email_callback'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'challenge_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'challenge_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'challenge_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'challenge_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'challenge_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'challenge_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'challenge_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'challenge_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_user_image_attachment_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_user_image_attachment_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_user_image_attachment_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_user_image_attachment_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'challenge_archive_page_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'challenge_archive_page_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'challenge_archive_page_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'challenge_archive_page_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_challenge_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_challenge_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_challenge_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_challenge_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'challenge_product_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'challenge_product_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'challenge_product_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'challenge_product_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_challenge_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_challenge_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_challenge_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_challenge_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_checkpoint_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_checkpoint_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_checkpoint_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_checkpoint_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_challenge_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_challenge_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_challenge_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_challenge_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enrolled_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enrolled_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enrolled_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enrolled_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cart_added_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cart_added_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cart_added_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cart_added_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_purchased'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_purchased'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_purchased'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_purchased'"
