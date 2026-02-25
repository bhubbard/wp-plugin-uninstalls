#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crp_db_version'
wp option delete 'crp_settings'
wp option delete 'crp_meta_migration_done'
wp option delete 'crp_show_wizard'
wp option delete 'crp_wizard_notice_dismissed'
wp option delete 'ald_crp_settings'
wp option delete 'crp_wizard_completed'
wp option delete 'crp_wizard_completed_date'
wp option delete 'crp_wizard_current_step'
wp option delete 'wz_posts_custom_tables_ready'
wp option delete 'crp_related_posts_pro_blocks_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'crp_deactivated_notice'
wp transient delete 'crp_show_wizard_activation_redirect'
wp transient delete 'crp_reindex_state'
wp transient delete 'crp_deactivated_notice_id'
wp transient delete 'crp_reindex_scheduled'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_manual_related'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_manual_related'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_manual_related'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_manual_related'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_exclude_this_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_exclude_this_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_exclude_this_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_exclude_this_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crp_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crp_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crp_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crp_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_disable_here'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_disable_here'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_disable_here'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_disable_here'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_exclude_words'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_exclude_words'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_exclude_words'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_exclude_words'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_exclude_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_exclude_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_exclude_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_exclude_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_primary_cat'"
