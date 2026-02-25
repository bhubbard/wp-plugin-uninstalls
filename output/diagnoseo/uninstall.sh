#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diagnoseo_redirect_attachment'
wp option delete 'wp_attachment_pages_enabled'
wp option delete 'diagnoseo_fix_category_url_base'
wp option delete 'diagnoseo_flush_rewrite_rules'
wp option delete 'diagnoseo_fix_product_cat_url_base'
wp option delete 'diagnoseo_schema_breadcrumblist'
wp option delete 'diagnoseo_author_index'
wp option delete 'diagnoseo_author_follow'
wp option delete 'diagnoseo_tag_index'
wp option delete 'diagnoseo_tag_follow'
wp option delete 'diagnoseo_archive_index'
wp option delete 'diagnoseo_archive_follow'
wp option delete 'diagnoseo_date_archive_index'
wp option delete 'diagnoseo_date_archive_follow'
wp option delete 'diagnoseo_sitemap_lastmod'
wp option delete 'diagnoseo_indexnow_apikey'
wp option delete 'diagnoseo_separator'
wp option delete 'diagnoseo_home_title'
wp option delete 'diagnoseo_page_title_template'
wp option delete 'diagnoseo_project_title_template'
wp option delete 'diagnoseo_project_category_title_template'
wp option delete 'diagnoseo_post_title_template'
wp option delete 'diagnoseo_category_title_template'
wp option delete 'diagnoseo_tag_title_template'
wp option delete 'diagnoseo_date_title_template'
wp option delete 'diagnoseo_archive_title_template'
wp option delete 'diagnoseo_home_description'
wp option delete 'diagnoseo_page_description_template'
wp option delete 'diagnoseo_project_description_template'
wp option delete 'diagnoseo_project_category_description_template'
wp option delete 'diagnoseo_post_description_template'
wp option delete 'diagnoseo_category_description_template'
wp option delete 'diagnoseo_tag_description_template'
wp option delete 'diagnoseo_date_description_template'
wp option delete 'diagnoseo_archive_description_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_index'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_follow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title_template'"
wp option delete 'diagnoseo_facebook_image'
wp option delete 'diagnoseo_twitter_image'
wp option delete 'diagnoseo_twitter_card'
wp option delete 'diagnoseo_product_title_template'
wp option delete 'diagnoseo_product_description_template'
wp option delete 'diagnoseo_product_category_title_template'
wp option delete 'diagnoseo_product_category_description_template'
wp option delete 'diagnoseo_product_tag_title_template'
wp option delete 'diagnoseo_product_tag_description_template'
wp option delete 'wpseo_titles'
wp option delete 'aioseo_options'
wp option delete 'rank-math-options-titles'
wp option delete 'autodescription-site-settings'
wp option delete 'seopress_titles_option_name'
wp option delete 'slim_seo'
wp option delete 'diagnoseo_site_owner_type'
wp option delete 'diagnoseo_site_owner_name'
wp option delete 'diagnoseo_site_owner_image'
wp option delete 'diagnoseo_site_owner_url'
wp option delete 'diagnoseo_site_owner_email'
wp option delete 'diagnoseo_site_owner_phone'
wp option delete 'diagnoseo_site_owner_street_address'
wp option delete 'diagnoseo_site_owner_locality'
wp option delete 'diagnoseo_site_owner_region'
wp option delete 'diagnoseo_site_owner_postal_code'
wp option delete 'diagnoseo_site_owner_country'
wp option delete 'diagnoseo_reviewedby_type'
wp option delete 'diagnoseo_reviewedby_name'
wp option delete 'diagnoseo_reviewedby_url'
wp option delete 'diagnoseo_schema_business_price_range'
wp option delete 'diagnoseo_header_scripts'
wp option delete 'diagnoseo_body_scripts'
wp option delete 'diagnoseo_footer_scripts'
wp option delete 'diagnoseo_sitemap_disabled'
wp option delete 'diagnoseo_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_schema_type'"
wp option delete 'date-format'
wp option delete 'diagnoseo_schema_owner'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_bc_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_bc_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_bc_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_bc_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_postlist_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_postlist_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_postlist_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_postlist_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_show_breadcrumbs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_show_breadcrumbs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_show_breadcrumbs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_show_breadcrumbs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_robots_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_robots_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_robots_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_robots_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_robots_follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_facebook_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_facebook_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_facebook_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_facebook_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_facebook_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_facebook_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_facebook_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_facebook_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_exclude_postlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_exclude_postlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_exclude_postlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_exclude_postlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_meta_exclude_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_meta_exclude_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_meta_exclude_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_meta_exclude_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diagnoseo_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diagnoseo_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diagnoseo_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diagnoseo_schema_type'"
