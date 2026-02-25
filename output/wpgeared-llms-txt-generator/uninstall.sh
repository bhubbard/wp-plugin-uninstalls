#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpg_llmstxt_enabled'
wp option delete 'wpg_llmstxt_post_types'
wp option delete 'wpg_llmstxt_include_categories'
wp option delete 'wpg_llmstxt_include_tags'
wp option delete 'wpg_llmstxt_site_description'
wp option delete 'wpg_llmstxt_excluded_ids'
wp option delete 'wpg_llmstxt_crawler_detection'
wp option delete 'wpg_llmstxt_cache_duration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'wpg_llmstxt_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_index'"
