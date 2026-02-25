#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcpner_llmstxt_settings'
wp option delete 'mcpner_llmstxt_content_selection'
wp option delete 'mcpner_llmstxt_exclusions'
wp option delete 'mcpner_llmstxt_integration_settings'
wp option delete 'llms_txt_settings'
wp option delete 'llms_txt_webhook_settings'
wp option delete 'llms_txt_pro_installed'
wp option delete 'llms_txt_pro_version'

# Delete Transients
wp transient delete 'mcpner_llmstxt_activation_error'
wp transient delete 'mcpner_llmstxt_generation_result'
wp transient delete 'llms_txt_license_valid'
wp transient delete 'mcpner_llmstxt_content'
wp transient delete 'mcpner_llmstxt_content_hash'

# Clear Cron Jobs
wp cron event delete 'mcpner_llmstxt_scheduled_regeneration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcpner_llmstxt_excluded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcpner_llmstxt_excluded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcpner_llmstxt_excluded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcpner_llmstxt_excluded'"
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
