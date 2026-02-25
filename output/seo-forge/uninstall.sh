#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onex_seo_remove_category_base'
wp option delete 'onex_seo_permalink_handler_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'onex_seo_default_og_image_%'"
wp option delete 'onex_seo_og_site_name'
wp option delete 'microdata_enabled'
wp option delete 'onex_seo_enable_meta_tags'
wp option delete 'microdata_org_image'
wp option delete 'microdata_org_logo'
wp option delete 'microdata_org_founding'
wp option delete 'microdata_org_publisher'
wp option delete 'microdata_org_email'
wp option delete 'microdata_org_telephone'
wp option delete 'microdata_org_streetAddress'
wp option delete 'microdata_org_addressLocality'
wp option delete 'microdata_org_addressCountry'
wp option delete 'microdata_org_postalCode'
wp option delete 'microdata_breadcrumb_container_class'
wp option delete 'microdata_breadcrumb_element_class'
wp option delete 'microdata_article_element_selector'
wp option delete 'microdata_article_author_name'
wp option delete 'microdata_article_author_link'
wp option delete 'microdata_article_featured_image_selector'
wp option delete 'microdata_article_content_images_selector'
wp option delete 'microdata_article_content_exclude_selector'
wp option delete 'microdata_article_section'
wp option delete 'microdata_article_content_body'
wp option delete 'microdata_article_content_body_skip'
wp option delete 'microdata_article_content_body_stop'
wp option delete 'microdata_faq_container_selector'
wp option delete 'microdata_faq_items_selector'
wp option delete 'microdata_faq_question_selector'
wp option delete 'microdata_faq_answer_selector'
wp option delete 'microdata_author_container_selector'
wp option delete 'microdata_author_links_selector'
wp option delete 'microdata_author_publications'
wp option delete 'microdata_article_author_container'
wp option delete 'microdata_article_author_job'
wp option delete 'microdata_article_author_image'
wp option delete 'microdata_org_social_links'
wp option delete 'microdata_org_principles_link'
wp option delete 'microdata_author_profile_name'
wp option delete 'microdata_author_profile_description'
wp option delete 'microdata_author_profile_image'
wp option delete 'microdata_author_profile_job_title'
wp option delete 'microdata_author_tags_container'
wp option delete 'microdata_carousel_container'
wp option delete 'microdata_carousel_items_wrapper'
wp option delete 'microdata_carousel_item'
wp option delete 'microdata_carousel_link'
wp option delete 'onex_seo_enable_proofreader'
wp option delete 'onex_seo_proofreader_roles'
wp option delete 'microdata_blogposting_enabled'
wp option delete 'microdata_blogposting_max_items'
wp option delete 'onex_seo_default_title_template'
wp option delete 'onex_seo_default_desc_template'
wp option delete 'onex_seo_default_og_image_default'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'onex_post_views_migration_version'
wp option delete 'onex_post_views_tables_created'
wp option delete 'onex_seo_proofreader_post_types'
wp option delete 'onex_seo_robots_txt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'microdata_org_slogan_%'"
wp option delete 'microdata_org_slogan'
wp option delete 'onex_seo_sitemap_enabled_types'
wp option delete 'onex_seo_db_version'

# Clear Cron Jobs
wp cron event delete 'onex_cleanup_views_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onex_seo_category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onex_seo_category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onex_seo_category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onex_seo_category_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_term_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_term_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_term_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_term_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onex_seo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onex_seo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onex_seo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onex_seo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'author_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'author_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'author_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'author_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_proofread_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_proofread_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_proofread_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_proofread_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_guestpost_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_guestpost_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_guestpost_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_guestpost_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onex_post_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onex_post_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onex_post_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onex_post_views'"
