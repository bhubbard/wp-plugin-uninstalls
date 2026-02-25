#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xmlsf_version'
wp option delete 'xmlsf_sitemaps'
wp option delete 'xmlsf_server'
wp option delete 'xmlsf_disabled_providers'
wp option delete 'xmlsf_post_types'
wp option delete 'xmlsf_taxonomies'
wp option delete 'xmlsf_taxonomy_settings'
wp option delete 'xmlsf_author_settings'
wp option delete 'xmlsf_ping'
wp option delete 'xmlsf_robots'
wp option delete 'xmlsf_urls'
wp option delete 'xmlsf_custom_sitemaps'
wp option delete 'xmlsf_domains'
wp option delete 'xmlsf_news_tags'
wp option delete 'xmlsf_authors'
wp option delete 'xmlsf_post_type_settings'
wp option delete 'xmlsf_gsc_connect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xmlsf_%'"
wp option delete 'xmlsf_pong'
wp option delete 'xmlsf_permalinks_flushed'
wp option delete 'xmlsf_images_meta_primed'
wp option delete 'xmlsf_comments_meta_primed'
wp option delete 'xmlsf_news_advanced'

# Delete Transients
wp transient delete 'xmlsf_sitemaps_updated'
wp transient delete 'xmlsf_server_updated'
wp transient delete 'sitemap_notifier_google_submission'
wp transient delete 'sitemap_notifier_bing_submission'
wp transient delete 'xmlsf_images_meta_primed'
wp transient delete 'xmlsf_comments_meta_primed'
wp transient delete 'xmlsf_static_files'
wp transient delete 'gsc_connect_origin'
wp transient delete 'sitemap_notifier_access_token'
wp transient delete 'sitemap_notifier_bing_access_token'
wp transient delete 'sitemap_notifier_google_access_token'
wp transient delete 'sitemap_notifier_submission'
wp transient delete 'sitemap_notifier_submission_news'
wp transient delete 'xmlsf_ping_google_sitemap_news'
wp transient delete 'xmlsf_ping_google_sitemap'
wp transient delete 'xmlsf_ping_bing_sitemap'
wp transient delete 'xmlsf_flush_rewrite_rules'
wp transient delete 'xmlsf_check_static_files'
wp transient delete 'xmlsf_prefetch_post_meta_failed'

# Clear Cron Jobs
wp cron event delete 'xmlsf_gsc_keep_alive'
wp cron event delete 'xmlsf_bwt_keep_alive'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xmlsf_image_attached'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xmlsf_image_attached'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xmlsf_image_attached'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xmlsf_image_attached'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xmlsf_image_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xmlsf_image_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xmlsf_image_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xmlsf_image_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xmlsf_comment_date_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xmlsf_comment_date_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xmlsf_comment_date_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xmlsf_comment_date_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xmlsf_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xmlsf_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xmlsf_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xmlsf_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xmlsf_news_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xmlsf_news_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xmlsf_news_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xmlsf_news_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_modified_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_modified_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_modified_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_modified_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xmlsf_comment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xmlsf_comment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xmlsf_comment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xmlsf_comment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xmlsf_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xmlsf_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xmlsf_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xmlsf_priority'"
