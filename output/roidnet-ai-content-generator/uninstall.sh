#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'roidaico_openrouter_api_key'
wp option delete 'roidaico_pexels_api_key'
wp option delete 'roidaico_openrouter_model'
wp option delete 'roidaico_default_tone'
wp option delete 'roidaico_default_length'
wp option delete 'roidaico_default_language'
wp option delete 'roidaico_enable_internal_links'
wp option delete 'roidaico_max_internal_links'
wp option delete 'roidaico_custom_instructions'
wp option delete 'roidaico_images_count'
wp option delete 'roidaico_seo_plugin'
wp option delete 'roidaico_max_ready_articles'
wp option delete 'roidaico_min_interval_minutes'
wp option delete 'roidaico_auto_generate_keywords'
wp option delete 'roidaico_auto_generate_category'
wp option delete 'roidaico_auto_generate_instructions'
wp option delete 'roidaico_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'roidaico_%'"
wp option delete 'roidaico_last_cron_check'
wp option delete 'roidaico_max_retries'
wp option delete 'roidaico_default_post_type'
wp option delete 'roidaico_ai_keywords_generated'
wp option delete 'roidaico_last_monthly_reset'
wp option delete 'roidaico_last_buffer_time'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'roidaico_openrouter_models'
wp transient delete 'roidaico_weekly_publish_count'
wp transient delete 'roidaico_buffer_lock'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'roidaico_scheduled_publish'
wp cron event delete 'roidaico_keyword_check'
wp cron event delete 'roidaico_queue_check'
wp cron event delete 'roidaico_buffer_check'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_roidaico_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_roidaico_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_roidaico_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_roidaico_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_roidaico_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_roidaico_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_roidaico_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_roidaico_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_roidaico_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_roidaico_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_roidaico_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_roidaico_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_roidaico_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_roidaico_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_roidaico_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_roidaico_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_roidaico_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_roidaico_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_roidaico_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_roidaico_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_roidaico_pexels_photographer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_roidaico_pexels_photographer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_roidaico_pexels_photographer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_roidaico_pexels_photographer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_roidaico_pexels_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_roidaico_pexels_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_roidaico_pexels_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_roidaico_pexels_id'"
