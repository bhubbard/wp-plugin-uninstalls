#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storehelper_alt_status'
wp option delete 'storehelper_kit_ai_api_key'
wp option delete 'alt_text_generator_api_key'
wp option delete 'storehelper_kit_alt_api_key'
wp option delete 'storehelper_kit_price_tiers_total'
wp option delete 'storehelper_alt_queue'
wp option delete 'storehelper_kit_llm_language'
wp option delete 'storehelper_llms_cache'
wp option delete 'storehelper_llms_options'
wp option delete 'storehelper_llms_log'
wp option delete 'sidebars_widgets'
wp option delete 'storehelper_kit_llm_model'
wp option delete 'storehelper_kit_llm_temperature'
wp option delete 'storehelper_kit_llm_max_tokens'
wp option delete 'storehelper_kit_llm_tone'

# Delete Transients
wp transient delete 'storehelper_kit_unused_media_ids'

# Clear Cron Jobs
wp cron event delete 'storehelper_kit_alt_cron_worker'
wp cron event delete 'storehelper_kit_llms_regenerate_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
