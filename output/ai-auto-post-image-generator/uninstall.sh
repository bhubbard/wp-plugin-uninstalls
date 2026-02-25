#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiapg_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiapg_%'"
wp option delete 'aiapg_openai_api_key'
wp option delete 'aiapg_gemini_api_key'
wp option delete 'aiapg_leonardo_api_key'
wp option delete 'aiapg_default_text_model'
wp option delete 'aiapg_default_image_model'
wp option delete 'aiapg_auto_publish'
wp option delete 'aiapg_post_status'
wp option delete 'aiapg_post_author'
wp option delete 'aiapg_enable_logging'
wp option delete 'aiapg_log_retention_days'
wp option delete 'aiapg_pollinations_api_key'
wp option delete 'aiapg_default_posts_per_run'
wp option delete 'aiapg_default_enable_images'
wp option delete 'aiapg_default_image_placement'
wp option delete 'aiapg_default_image_size'
wp option delete 'aiapg_default_images_per_post'
wp option delete 'aiapg_max_retries'
wp option delete 'aiapg_timeout_seconds'
wp option delete 'aiapg_enable_debug_log'
wp option delete 'aiapg_default_fallback_image_model'

# Clear Cron Jobs
wp cron event delete 'aiapg_schedule_run'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_focus_keyphrase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_focus_keyphrase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_focus_keyphrase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_focus_keyphrase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
