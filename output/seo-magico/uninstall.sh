#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smg_settings'
wp option delete 'smg_generation_log'
wp option delete 'smg_gemini_api_key'
wp option delete 'smg_generation_count'
wp option delete 'smg_recalc_posts_queue'
wp option delete 'smg_recalc_images_queue'
wp option delete 'smg_recalc_progress'
wp option delete 'smg_deactivation_feedback_log'
wp option delete 'smg_needs_initial_scan'
wp option delete 'smg_sh_max_psi_per_run'
wp option delete 'smg_last_seo_quality_analysis'
wp option delete 'smg_last_overall_site_score'
wp option delete 'smg_google_oauth_tokens'
wp option delete 'smg_license_key'
wp option delete 'smg_license_error_message'
wp option delete 'smg_active_product_id'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'smg_api_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smg_sh_job_%' OR option_name LIKE '_site_transient_smg_sh_job_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'smg_recalculation_cron_hook'
wp cron event delete 'smg_async_process_post'
wp cron event delete 'smg_async_process_attachment'
wp cron event delete 'smg_daily_license_check'
wp cron event delete 'smg_autopilot_cron_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_footer_stars_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_footer_stars_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_footer_stars_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_footer_stars_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smg_admin_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smg_admin_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smg_admin_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smg_admin_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_custom_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_custom_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_custom_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_custom_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_og_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_og_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_og_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_og_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_coverage_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_coverage_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_coverage_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_coverage_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_word_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_word_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_word_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_word_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_internal_link_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_internal_link_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_internal_link_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_internal_link_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_external_link_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_external_link_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_external_link_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_external_link_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_autopilot_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_autopilot_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_autopilot_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_autopilot_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_robots_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_robots_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
