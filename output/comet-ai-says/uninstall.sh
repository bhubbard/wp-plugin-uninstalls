#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcmt_aisays_custom_language'
wp option delete 'wpcmt_aisays_provider'
wp option delete 'wpcmt_aisays_total_generations'
wp option delete 'wpcmt_aisays_gemini_model'
wp option delete 'wpcmt_aisays_language'
wp option delete 'wpcmt_aisays_openai_model'
wp option delete 'wpcmt_aisays_prompt_template'
wp option delete 'wpcmt_aisays_display_mode'
wp option delete 'wpcmt_aisays_display_position'
wp option delete 'wpcmt_aisays_shortcode'
wp option delete 'wpcmt_aisays_max_tokens'
wp option delete 'wpcmt_aisays_gemini_api_key'
wp option delete 'wpcmt_aisays_openai_api_key'

# Delete Transients
wp transient delete 'wpcmt_aisays_daily_usage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpcmt_aisays_bulk_ids_%' OR option_name LIKE '_site_transient_wpcmt_aisays_bulk_ids_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcmt_aisays_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcmt_aisays_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcmt_aisays_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcmt_aisays_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcmt_aisays_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcmt_aisays_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcmt_aisays_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcmt_aisays_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
