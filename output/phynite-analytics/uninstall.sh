#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phynite_api_key'
wp option delete 'phynite_sync_state'
wp option delete 'phynite_sync_queue'
wp option delete 'phynite_retry_queue'
wp option delete 'phynite_dataset_id'
wp option delete 'phynite_website_name'
wp option delete 'phynite_last_sync'
wp option delete 'phynite_last_sync_count'
wp option delete 'phynite_health_status'
wp option delete 'phynite_scheduled_sync_enabled'
wp option delete 'phynite_last_scheduled_sync'

# Delete Transients
wp transient delete 'phynite_rate_limit'

# Clear Cron Jobs
wp cron event delete 'phynite_health_check'
wp cron event delete 'phynite_process_retry_queue'
wp cron event delete 'phynite_scheduled_sync'
wp cron event delete 'phynite_process_sync_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yield'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yield'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yield'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yield'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm_recipe_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm_recipe_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm_recipe_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm_recipe_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
