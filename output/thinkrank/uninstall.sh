#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thinkrank_show_welcome'
wp option delete 'thinkrank_version'
wp option delete 'thinkrank_global_seo_settings'
wp option delete 'thinkrank_settings_last_updated'
wp option delete 'thinkrank_settings_version'
wp option delete 'thinkrank_schema_version'
wp option delete 'thinkrank_backup_index'
wp option delete 'thinkrank_activated'
wp option delete 'thinkrank_activation_time'
wp option delete 'thinkrank_last_deactivation'
wp option delete 'thinkrank_settings'
wp option delete 'thinkrank_seo_db_version'
wp option delete 'thinkrank_seo_last_optimized'
wp option delete 'thinkrank_seo_db_created'
wp option delete 'thinkrank_allow_fresh_install'
wp option delete 'thinkrank_seo_installed'
wp option delete 'thinkrank_seo_installation_date'
wp option delete 'thinkrank_seo_installation_log'
wp option delete 'thinkrank_global_robot_meta_settings'
wp option delete 'thinkrank_integrations_settings'
wp option delete 'thinkrank_site_identity_settings'
wp option delete 'thinkrank_social_media_settings'
wp option delete 'thinkrank_seo_last_migration'
wp option delete 'thinkrank_seo_migration_log'
wp option delete 'thinkrank_keep_data_on_uninstall'

# Delete Transients
wp transient delete 'thinkrank_sitemap_generation_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_reset' OR option_name LIKE '_site_transient_%_reset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_count' OR option_name LIKE '_site_transient_%_count'"
wp transient delete 'thinkrank_llms_file_status'

# Clear Cron Jobs
wp cron event delete 'thinkrank_cache_cleanup'
wp cron event delete 'thinkrank_usage_analytics'
wp cron event delete 'thinkrank_monthly_credit_reset'
wp cron event delete 'thinkrank_regenerate_sitemap'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_pillar_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_pillar_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_pillar_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_pillar_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_ai_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_ai_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_ai_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_ai_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_ai_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_ai_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_ai_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_ai_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_metadata_full'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_metadata_full'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_metadata_full'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_metadata_full'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_last_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_last_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_last_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_last_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thinkrank_seo_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thinkrank_seo_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thinkrank_seo_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thinkrank_seo_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_video_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_video_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_video_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_video_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_video_embed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_video_embed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_video_embed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_video_embed_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_availability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_availability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_availability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_availability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_price_valid_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_price_valid_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_price_valid_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_price_valid_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_rating_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_rating_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_rating_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_rating_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_product_reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_product_reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_product_reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_product_reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thinkrank_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thinkrank_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thinkrank_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thinkrank_twitter_image'"
