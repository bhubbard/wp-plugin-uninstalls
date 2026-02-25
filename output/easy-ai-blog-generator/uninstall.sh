#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyaibloggen_api_key'
wp option delete 'easyaibloggen_default_image_style'
wp option delete 'easyaibloggen_default_tone_modifier'
wp option delete 'easyaibloggen_enable_scheduling'
wp option delete 'easyaibloggen_schedule_topic'
wp option delete 'easyaibloggen_schedule_interval'
wp option delete 'easyaibloggen_schedule_topics_keywords'
wp option delete 'easyaibloggen_brand_voice'
wp option delete 'easyaibloggen_enable_personalization'
wp option delete 'easyaibloggen_personalization_strength'
wp option delete 'easyaibloggen_company_name'
wp option delete 'easyaibloggen_website_purpose'
wp option delete 'easyaibloggen_target_audience'
wp option delete 'easyaibloggen_products_services'
wp option delete 'easyaibloggen_differentiators'
wp option delete 'easyaibloggen_call_to_action'
wp option delete 'easyaibloggen_suggested_keywords'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_easyaibloggen_format_preview_%' OR option_name LIKE '_site_transient_easyaibloggen_format_preview_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'easyaibloggen_scheduled_post_generation'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyaibloggen_generated_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyaibloggen_generated_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyaibloggen_generated_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyaibloggen_generated_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_easyaibloggen_social_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_easyaibloggen_social_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_easyaibloggen_social_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easyaibloggen_social_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyaibloggen_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyaibloggen_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyaibloggen_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyaibloggen_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
