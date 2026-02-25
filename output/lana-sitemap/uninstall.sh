#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lana_sitemap_sitemaps'
wp option delete 'rewrite_rules'
wp option delete 'lana_sitemap_robots'
wp option delete 'lana_sitemap_news_tags'
wp option delete 'lana_sitemap_post_types'
wp option delete 'lana_sitemap_taxonomies'
wp option delete 'lana_sitemap_domains'
wp option delete 'lana_sitemap_urls'
wp option delete 'lana_sitemap_custom_sitemaps'
wp option delete 'lana_sitemap_ping'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lana_sitemap_%'"
wp option delete 'lana_sitemap_version'
wp option delete 'lana_sitemap_news_sitemap'

# Delete Transients
wp transient delete 'lana_sitemap_flush_rewrite_rules'
wp transient delete 'lana_sitemap_create_genres'
wp transient delete 'lana_sitemap_clear_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lana_sitemap_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lana_sitemap_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lana_sitemap_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lana_sitemap_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lana_sitemap_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lana_sitemap_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lana_sitemap_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lana_sitemap_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lana_sitemap_news_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lana_sitemap_news_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lana_sitemap_news_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lana_sitemap_news_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lana_sitemap_news_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lana_sitemap_news_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lana_sitemap_news_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lana_sitemap_news_access'"
