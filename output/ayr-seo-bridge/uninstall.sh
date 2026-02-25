#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayr_seo_bridge_version'
wp option delete 'ayr_seo_bridge_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
