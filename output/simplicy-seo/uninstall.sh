#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_title_code'
wp option delete 'seo_desc_code'
wp option delete 'seo_robot_home_code'
wp option delete 'seo_meta_author'
wp option delete 'seo_meta_contact'
wp option delete 'seo_meta_copyright'
wp option delete 'seo_geo_region'
wp option delete 'seo_geo_placename'
wp option delete 'seo_geo_position'
wp option delete 'seo_ICBM'
wp option delete 'seo_app_id'
wp option delete 'seo_admins'
wp option delete 'display_og_url'
wp option delete 'display_og_site_name'
wp option delete 'display_og_description'
wp option delete 'display_og_type'
wp option delete 'display_og_image'
wp option delete 'upload_image'
wp option delete 'display_og_url_post'
wp option delete 'display_og_title'
wp option delete 'display_og_description_post'
wp option delete 'display_og_type_post'
wp option delete 'display_og_image_post'
wp option delete 'seo_key_code'
wp option delete 'seo_key_news_keywords'
wp option delete 'seo_tracking_code'
wp option delete 'seo_index_archives'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tag_meta_key_%'"
wp option delete 'csmt_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cat_meta_key_%'"
wp option delete ' display_og_title'
wp option delete ' display_og_image_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_desc_post_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_desc_post_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_desc_post_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_desc_post_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_title_sp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_title_sp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_title_sp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_title_sp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_keys_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_keys_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_keys_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_keys_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_url_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_url_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_url_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_url_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_news_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_news_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_news_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_news_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_post_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_post_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_post_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_post_robots'"
