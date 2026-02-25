#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w3tc_browsercache_flush_timestamp'
wp option delete 'w3tc_state'
wp option delete 'w3tc_alwayscached_worker_timestamp'
wp option delete 'w3tc_alwayscached_wp_cron_time'
wp option delete 'w3tc_alwayscached_wp_cron_interval'
wp option delete 'w3tc_nr_frontend_response_time'
wp option delete 'w3tc_nr_browser_applications'
wp option delete 'w3tc_nr_account_id'
wp option delete 'w3tc_nr_application_id'
wp option delete 'icl_sitepress_settings'
wp option delete 'w3tc_extensions_hooks'
wp option delete 'w3tc_message'
wp option delete 'w3tc_post_update_generic_tasks_ran_versions'
wp option delete 'w3tc_cached_notices'
wp option delete 'w3tc_setupguide_completed'
wp option delete 'w3tc_install_date'
wp option delete 'w3tc_post_update_admin_tasks_ran_versions'
wp option delete 'w3tc_post_update_tasks_ran_versions'
wp option delete 'active_sitewide_plugins'
wp option delete 'w3tc_remove_data'
wp option delete 'license_update_messages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'w3tc_minify_filter_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'w3tc_minify_%'"
wp option delete 'w3tcps_refresh_fail'
wp option delete 'w3tcps_refresh_fail_message'
wp option delete 'w3tcps_authorize_success'
wp option delete 'w3tcps_authorize_fail'
wp option delete 'w3tcps_authorize_fail_message'
wp option delete 'w3tcps_revoke_fail'
wp option delete 'w3tcps_revoke_fail_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'w3tc_pagespeed_data_%'"
wp option delete 'w3tc_pgcache_prime_offset'
wp option delete 'w3tc_generic_widgetservices'
wp option delete 'w3tc_stats_history_access_log'
wp option delete 'w3tc_stats_history'
wp option delete 'w3tc_stats_hotspot_start'
wp option delete 'w3tc_dashboard_widget_options'

# Delete Transients
wp transient delete 'w3tc_cdn_google_drive_folder_ids'
wp transient delete 'w3tc_cdn_error'
wp transient delete 'w3tc_remove_add_in_dbcache'
wp transient delete 'w3tc_cloudflare_stats'
wp transient delete 'w3tc_imageservice_limited'
wp transient delete 'w3tc_imageservice_usage'
wp transient delete 'w3tc_activation_imageservice'
wp transient delete 'w3tc_nr_widgetdata_basic'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_w3tc_activation_%' OR option_name LIKE '_site_transient_w3tc_activation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_w3tc_remove_add_in_%' OR option_name LIKE '_site_transient_w3tc_remove_add_in_%'"
wp transient delete 'w3tc_remove_add_in_pgcache'
wp transient delete 'w3tc_license_status'
wp transient delete 'w3tc.verify_plugins'
wp transient delete 'w3tc_ustats_minify_size'
wp transient delete 'w3tc_remove_add_in_objectcache'
wp transient delete 'w3tc_ustats_pagecache_size'
wp transient delete 'w3tc_config_changes'

# Clear Cron Jobs
wp cron event delete 'w3_cdn_cron_queue_process'
wp cron event delete 'w3_cdn_cron_upload'
wp cron event delete 'w3_dbcache_cleanup'
wp cron event delete 'w3tc_dbcache_purge_wpcron'
wp cron event delete 'w3tc_alwayscached_wp_cron'
wp cron event delete 'w3_fragmentcache_cleanup'
wp cron event delete 'w3tc_imageservice_cron'
wp cron event delete 'w3tc_purgeall_wpcron'
wp cron event delete 'w3tc_purge_all_wpcron'
wp cron event delete 'w3_minify_cleanup'
wp cron event delete 'w3tc_minifycache_purge_wpcron'
wp cron event delete 'w3_objectcache_cleanup'
wp cron event delete 'w3tc_objectcache_purge_wpcron'
wp cron event delete 'w3_pgcache_cleanup'
wp cron event delete 'w3_pgcache_prime'
wp cron event delete 'w3tc_pgcache_purge_wpcron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3tc_imageservice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3tc_imageservice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3tc_imageservice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3tc_imageservice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3tc_imageservice_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3tc_imageservice_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3tc_imageservice_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3tc_imageservice_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3tc_features_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3tc_features_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3tc_features_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3tc_features_seen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
