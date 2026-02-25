#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seocostm_groq_api_key'

# Delete Transients
wp transient delete 'seocostm_stored_keywords'
wp transient delete 'seocostm_content_decay_count'
wp transient delete 'seocostm_funnel_analysis_v3'
wp transient delete 'seocostm_entities_analysis_result'
wp transient delete 'seocostm_all_entities_list'
wp transient delete 'seocostm_content_clusters_result'
wp transient delete 'seocostm_unknown_intent_kws_v2'
wp transient delete 'seocostm_content_clusters_result_v4'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seocostm_word_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seocostm_word_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seocostm_word_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seocostm_word_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seocostm_image_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seocostm_image_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seocostm_image_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seocostm_image_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seocostm_link_internal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seocostm_link_internal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seocostm_link_internal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seocostm_link_internal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seocostm_link_external'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seocostm_link_external'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seocostm_link_external'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seocostm_link_external'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seocostm_is_pillar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seocostm_is_pillar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seocostm_is_pillar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seocostm_is_pillar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seocostm_pillar_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seocostm_pillar_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seocostm_pillar_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seocostm_pillar_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_schema_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_schema_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_schema_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_schema_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_schema_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_schema_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_schema_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_schema_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seocostm_kw_density'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seocostm_kw_density'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seocostm_kw_density'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seocostm_kw_density'"
