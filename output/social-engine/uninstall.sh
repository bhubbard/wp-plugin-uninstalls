#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sclegn_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_post_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_post_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_post_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_post_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_thumbnails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_service_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_service_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_service_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_service_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_posted_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_posted_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_posted_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_posted_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_post_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_post_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_post_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_post_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_related_postId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_related_postId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_related_postId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_related_postId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sclegn_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sclegn_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sclegn_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sclegn_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
