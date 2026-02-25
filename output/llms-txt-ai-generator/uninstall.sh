#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llmstxtaigen_openrouter_api_key'
wp option delete 'llmstxtaigen_enable_batch_processing'
wp option delete 'llmstxtaigen_ai_batch_size'
wp option delete 'llms_openrouter_api_key'
wp option delete 'llmstxtaigen_enable_ai_descriptions'
wp option delete 'llmstxtaigen_saved_options'
wp option delete 'llmstxtaigen_content_language'
wp option delete 'llms_enable_batch_processing'
wp option delete 'llms_enable_content_cleaning'
wp option delete 'llms_custom_translations'
wp option delete 'llms_content_language'
wp option delete 'llmstxtaigen_enable_content_cleaning'

# Direct DB Queries (Fallback)
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
