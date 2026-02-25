#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hyve_lite_logger_flag'
wp option delete 'hyve_settings'
wp option delete 'hyve_qdrant_status'
wp option delete 'hyve_qdrant_migration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'hyve_lite_install'
wp option delete 'hyve_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'otter_reference_key'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hyve_message_%' OR option_name LIKE '_site_transient_hyve_message_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_total' OR option_name LIKE '_site_transient_%_total'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hyve_moderate_post_%' OR option_name LIKE '_site_transient_hyve_moderate_post_%'"
wp transient delete 'hyve_messages_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"

# Clear Cron Jobs
wp cron event delete 'hyve_delete_posts'
wp cron event delete 'hyve_update_posts'
wp cron event delete 'hyve_process_post'
wp cron event delete 'hyve_lite_migrate_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_moderation_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_moderation_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_moderation_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_moderation_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_needs_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_needs_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_needs_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_needs_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_moderation_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_moderation_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_moderation_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_moderation_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_thread_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_thread_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_thread_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_thread_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_thread_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_thread_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_thread_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_thread_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_post_processing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_post_processing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_post_processing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_post_processing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyve_thread_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyve_thread_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyve_thread_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyve_thread_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
