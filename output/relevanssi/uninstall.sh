#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'relevanssi_terms_count'
wp option delete 'relevanssi_user_count'
wp option delete 'relevanssi_taxterm_count'
wp option delete 'relevanssi_show_matches_text'
wp option delete 'relevanssi_index_fields'
wp option delete 'relevanssi_punctuation'
wp option delete 'relevanssi_index_post_types'
wp option delete 'relevanssi_index_image_files'
wp option delete 'relevanssi_admin_search'
wp option delete 'relevanssi_synonyms'
wp option delete 'relevanssi_doc_count'
wp option delete 'relevanssi_highlight_docs'
wp option delete 'relevanssi_min_word_length'
wp option delete 'relevanssi_seo_noindex'
wp option delete 'pmpro_filterqueries'
wp option delete 'relevanssi_polylang_all_languages'
wp option delete 'rcp_settings'
wp option delete 'woocommerce_attribute_lookup_enabled'
wp option delete '_wpfd_global_search_config'
wp option delete 'relevanssi_wpml_only_current'
wp option delete 'relevanssi_debugging_mode'
wp option delete 'relevanssi_fuzzy'
wp option delete 'relevanssi_implicit_operator'
wp option delete 'relevanssi_disable_or_fallback'
wp option delete 'relevanssi_throttle'
wp option delete 'relevanssi_throttle_limit'
wp option delete 'relevanssi_default_orderby'
wp option delete 'relevanssi_excerpt_length'
wp option delete 'relevanssi_excerpt_type'
wp option delete 'relevanssi_excerpt_custom_fields'
wp option delete 'relevanssi_excerpt_specific_fields'
wp option delete 'relevanssi_index_synonyms'
wp option delete 'relevanssi_index_comments'
wp option delete 'relevanssi_index_excerpt'
wp option delete 'relevanssi_highlight'
wp option delete 'relevanssi_max_excerpts'
wp option delete 'relevanssi_txt_col'
wp option delete 'relevanssi_bg_col'
wp option delete 'relevanssi_css'
wp option delete 'relevanssi_class'
wp option delete 'relevanssi_expand_highlights'
wp option delete 'relevanssi_excerpt_allowable_tags'
wp option delete 'relevanssi_internal_links'
wp option delete 'relevanssi_index'
wp option delete 'relevanssi_indexed'
wp option delete 'relevanssi_index_taxonomies_list'
wp option delete 'relevanssi_index_author'
wp option delete 'relevanssi_disable_shortcodes'
wp option delete 'relevanssi_highlight_comments'
wp option delete 'relevanssi_trim_logs'
wp option delete 'relevanssi_stopwords'
wp option delete 'relevanssi_db_version'
wp option delete 'relevanssi_cat'
wp option delete 'relevanssi_comment_boost'
wp option delete 'relevanssi_content_boost'
wp option delete 'relevanssi_exact_match_bonus'
wp option delete 'relevanssi_excat'
wp option delete 'relevanssi_excerpts'
wp option delete 'relevanssi_exclude_posts'
wp option delete 'relevanssi_expand_shortcodes'
wp option delete 'relevanssi_extag'
wp option delete 'relevanssi_hilite_title'
wp option delete 'relevanssi_log_queries'
wp option delete 'relevanssi_log_queries_with_ip'
wp option delete 'relevanssi_omit_from_logs'
wp option delete 'relevanssi_respect_exclude'
wp option delete 'relevanssi_show_matches'
wp option delete 'relevanssi_title_boost'
wp option delete 'relevanssi_post_type_weights'
wp option delete 'relevanssi_index_terms'
wp option delete 'relevanssi_link_boost'
wp option delete 'relevanssi_index_users'
wp option delete 'relevanssi_index_taxonomies'
wp option delete 'relevanssi_hide_branding'
wp option delete 'relevanssi_show_post_controls'
wp option delete 'relevanssi_thousand_separator'
wp option delete 'relevanssi_cache_seconds'
wp option delete 'relevanssi_custom_types'
wp option delete 'relevanssi_enable_cache'
wp option delete 'relevanssi_hidesponsor'
wp option delete 'relevanssi_index_attachments'
wp option delete 'relevanssi_index_drafts'
wp option delete 'relevanssi_index_limit'
wp option delete 'relevanssi_index_type'
wp option delete 'relevanssi_show_matches_txt'
wp option delete 'relevanssi_tag_boost'
wp option delete 'relevanssi_include_cats'
wp option delete 'relevanssi_include_tags'
wp option delete 'relevanssi_custom_taxonomies'
wp option delete 'relevanssi_taxonomies_to_index'
wp option delete 'relevanssi_highlight_docs_external'
wp option delete 'relevanssi_word_boundaries'
wp option delete 'relevanssi_expst'
wp option delete 'relevanssi_click_tracking'

# Delete Transients
wp transient delete 'relevanssi_didyoumean_query'
wp transient delete 'relevanssi_docs_count'

# Clear Cron Jobs
wp cron event delete 'relevanssi_trim_logs'
wp cron event delete 'relevanssi_update_counts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_relevanssi_noindex_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_relevanssi_noindex_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_relevanssi_noindex_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_relevanssi_noindex_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ninja_table_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ninja_table_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ninja_table_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ninja_table_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ninja_table_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ninja_table_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ninja_table_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ninja_table_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_local_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_local_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_local_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_local_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_relevanssi_hide_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_relevanssi_hide_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_relevanssi_hide_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_relevanssi_hide_content'"
