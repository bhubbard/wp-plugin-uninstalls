#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wl_entity_type_settings'
wp option delete 'wl_analytics_settings'
wp option delete 'wl_general_settings'
wp option delete '_wl_video_sitemap_generation'
wp option delete '_wl_content_migration__migrated'
wp option delete 'wl_db_version'
wp option delete '_wl_main_ingredient_content_migration__migrated'
wp option delete '_wl_term_content_migration__migrated'
wp option delete '_wl_sync_background_process_started'
wp option delete '_wl_sync_background_process_offset'
wp option delete '_wl_sync_background_process_stage'
wp option delete '_wl_sync_background_process_count'
wp option delete '_wl_sync_background_process_updated'
wp option delete '_wl_sync_background_process_state'
wp option delete 'wpsso_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%started'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%offset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%state'"
wp option delete 'wl_http_api'
wp option delete '_wl_blog_url'
wp option delete 'wl_mappings'
wp option delete 'wl_webhooks_settings'
wp option delete 'wl_exclude_include_urls_settings'
wp option delete '_wl_dashboard__synchronization'
wp option delete '_wl_events__include_exclude__initial__sent'
wp option delete '_wl_features'
wp option delete '_wl_include_exclude_default_sent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'wl_option_prefixes'
wp option delete 'wl_advanced_settings'

# Delete Transients
wp transient delete '_wl_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete '_wl_entity_service__count'
wp transient delete 'wl-key-error-msg'
wp transient delete '_wl_installing'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete '_wl_notices'

# Clear Cron Jobs
wp cron event delete 'wl_ttl_cache_cleaner__cleanup'
wp cron event delete 'wl_daily_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'entity_same_as'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'entity_same_as'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'entity_same_as'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'entity_same_as'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wl_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wl_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wl_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wl_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wl_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wl_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wl_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wl_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wl_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wl_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wl_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wl_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wl_entity_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wl_entity_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wl_entity_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wl_entity_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wl_sample_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wl_sample_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wl_sample_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wl_sample_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wl_about_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wl_about_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wl_about_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wl_about_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wl_mentions_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wl_mentions_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wl_mentions_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wl_mentions_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wl_entity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wl_entity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wl_entity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wl_entity_id'"
