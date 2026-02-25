#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_smart_excerpt_options'
wp option delete 'ai_smart_excerpt_bulk_progress'
wp option delete 'ai_smart_excerpt_feedback'
wp option delete 'ai_smart_excerpt_seo_bulk_progress'
wp option delete 'minLen'
wp option delete 'maxLen'
wp option delete 'useTitle'
wp option delete 'useTags'
wp option delete 'featured'
wp option delete 'more'
wp option delete 'keepHtmlTags'
wp option delete 'numSentences'
wp option delete 'skipManual'

# Delete Transients
wp transient delete 'ai_seo_bulk_needs_continue'

# Clear Cron Jobs
wp cron event delete 'ai_smart_excerpt_bulk_process'
wp cron event delete 'ai_smart_excerpt_bulk_process_backup'
wp cron event delete 'ai_smart_excerpt_seo_bulk_process'
wp cron event delete 'ai_smart_excerpt_generate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_smart_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_smart_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_smart_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_smart_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_excerpt_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_excerpt_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_excerpt_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_excerpt_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_smart_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_smart_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_smart_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_smart_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_keywords_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_keywords_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_keywords_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_keywords_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_seo_assignments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_seo_assignments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_seo_assignments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_seo_assignments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
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
