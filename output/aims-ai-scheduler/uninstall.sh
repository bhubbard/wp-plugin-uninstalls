#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aimsaisc_content_cron_interval'
wp option delete 'aimsaisc_gemini_top_models'
wp option delete 'aimsaisc_gpt_top_models'
wp option delete 'aimsaisc_gpwa_gpt_model'
wp option delete 'aimsaisc_gpwa_api_model'
wp option delete 'aimsaisc_gpwa_gemini_model'

# Clear Cron Jobs
wp cron event delete 'aimsaisc_generate_content_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
