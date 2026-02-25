#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rocketship_seo_bot_detector_settings'
wp option delete 'rocketship_seo_db_version'
wp option delete 'rocketship_seo_settings'
wp option delete 'rocketship_seo_ai_redirect_settings'
wp option delete 'rocketship_seo_bot_redirect_settings'
wp option delete 'rocketship_seo_google_oauth_client_id'
wp option delete 'rocketship_seo_google_oauth_client_secret'
wp option delete 'rocketship_seo_google_oauth_access_token'
wp option delete 'rocketship_seo_google_oauth_refresh_token'
wp option delete 'rocketship_seo_google_oauth_token_expires'
wp option delete 'rocketship_seo_google_places_api_key'
wp option delete 'rocketship_seo_reviews_cache_duration'
wp option delete 'rocketship_seo_reviews_custom_css'
wp option delete 'rocketship_seo_saved_place_ids'
wp option delete 'rocketship_seo_reviews_fetch_method'
wp option delete 'rocketship_seo_version'
wp option delete 'rocketship_seo_bot_detector_table_version'
wp option delete 'rocketship_seo_file_rules_settings'
wp option delete 'rocketship_seo_indexing_settings'
wp option delete 'rocketship_seo_indexnow_log'
wp option delete 'rocketship_seo_indexnow_stats'
wp option delete 'rocketship_seo_admin_notices'
wp option delete 'rocketship_seo_redirect_table_version'
wp option delete 'rocketship_seo_reviews_auth_method'
wp option delete 'rocketship_seo_reviews_oauth_token'
wp option delete 'rocketship_seo_reviews_oauth_refresh_token'
wp option delete 'rocketship_seo_reviews_oauth_token_expiry'
wp option delete 'rocketship_seo_reviews_oauth_account_info'
wp option delete 'rocketship_seo_reviews_oauth_client_id'
wp option delete 'rocketship_seo_reviews_oauth_client_secret'
wp option delete 'rocketship_seo_visual_sitemap_settings'
wp option delete 'rocketship_seo_update_history'

# Delete Transients
wp transient delete 'rocketship_seo_updating'

# Clear Cron Jobs
wp cron event delete 'rocketship_seo_cleanup_bot_logs'
wp cron event delete 'rocketship_seo_indexnow_auto_submit'
wp cron event delete 'rocketship_reviews_daily_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rocketship_seo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rocketship_seo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rocketship_seo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rocketship_seo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rocketship_seo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rocketship_seo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rocketship_seo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rocketship_seo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rocketship_seo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rocketship_seo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rocketship_seo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rocketship_seo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rocketship_seo_exclude_sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rocketship_seo_exclude_sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rocketship_seo_exclude_sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rocketship_seo_exclude_sitemap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rocketship_seo_disable_toc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rocketship_seo_disable_toc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rocketship_seo_disable_toc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rocketship_seo_disable_toc'"
