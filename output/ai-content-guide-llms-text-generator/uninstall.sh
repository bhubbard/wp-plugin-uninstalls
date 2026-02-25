#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fulgid_aicogu_settings'
wp option delete 'fulgid_aicogu_file_updated'
wp option delete 'fulgid_aicogu_activated'
wp option delete 'ai_content_guide_settings'
wp option delete 'ai_content_guide_file_content'
wp option delete 'fulgid_aicogu_file_content'
wp option delete 'ai_content_guide_full_file_content'
wp option delete 'fulgid_aicogu_full_file_content'
wp option delete 'ai_content_guide_file_updated'
wp option delete 'ai_content_guide_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"

# Clear Cron Jobs
wp cron event delete 'fulgid_aicogu_regenerate_file'
wp cron event delete 'ai_content_guide_regenerate_file'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
