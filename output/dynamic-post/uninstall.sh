#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saved_cats'
wp option delete 'current_mon'
wp option delete 'api_key'
wp option delete 'dyc_api_type'
wp option delete 'auto_up'
wp option delete 'feat_ured2'
wp option delete 'hide_images'
wp option delete 'feat_ured'
wp option delete 'custom_date_key_dyn_pst'
wp option delete 'terms_of_use'
wp option delete 'hide_metadata'
wp option delete 'canonical_metadata'
wp option delete 'content_css'
wp option delete 'post_start_date'
wp option delete 'disclaimer_summary'
wp option delete 'disclaimer_article'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynmaicpost_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynmaicpost_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynmaicpost_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynmaicpost_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'current_mon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'current_mon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'current_mon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'current_mon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
