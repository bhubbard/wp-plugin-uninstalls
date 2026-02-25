#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'binaryph_ai_seo_grok_api_key'
wp option delete 'binaryph_ai_seo_gemini_api_key'
wp option delete 'binaryph_ai_seo_openrouter_api_key'
wp option delete 'binaryph_ai_seo_ollama_api_key'
wp option delete 'binaryph_ai_seo_openwebui_api_key'
wp option delete 'binaryph_ai_seo_openwebui_instance_url'
wp option delete 'binaryph_ai_seo_default_ai'
wp option delete 'binaryph_ai_seo_ai_model'
wp option delete 'binaryph_ai_seo_pages_last_synced'
wp option delete 'binaryph_ai_seo_posts_last_synced'
wp option delete 'binaryph_ai_seo_products_last_synced'
wp option delete 'binaryph_ai_seo_schedule_enabled'
wp option delete 'binaryph_ai_seo_schedule_frequency'
wp option delete 'binaryph_ai_seo_schedule_time'

# Clear Cron Jobs
wp cron event delete 'binaryph_ai_seo_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
