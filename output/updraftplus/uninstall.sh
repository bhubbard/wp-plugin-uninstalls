#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp option delete 'updraft_oneshotnonce'
wp option delete 'updraft_restore_in_progress'
wp option delete 'updraftplus_product_key'
wp option delete 'external_updates-updraftplus'
wp option delete 'woocommerce_version'
wp option delete 'updraftcentral_client_log'
wp option delete 'menu_items'
wp option delete 'updraftcentral_reporting_reports'
wp option delete 'updraftcentral_reporting_sent_reports'
wp option delete 'allowedthemes'
wp option delete 'auto_update_plugins'
wp option delete 'updraftplus-addons_siteid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'updraft_jobdata_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'updraftplus_semaphore_%'"
wp option delete 'updraftplus_migrated_site_domain'
wp option delete 'updraftplus_clone_scheduled_removal'
wp option delete 'updraftplus_clone_package_cost'
wp option delete 'updraftplus_clone_removal_warning'
wp option delete 'updraftplus_clone_admin_only_login'
wp option delete 'updraft_interval'
wp option delete 'updraft_interval_database'
wp option delete 'updraft_interval_increments'
wp option delete 'updraft_retain'
wp option delete 'updraft_retain_db'
wp option delete 'updraft_retain_extrarules'
wp option delete 'updraft_encryptionphrase'
wp option delete 'updraft_service'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'updraft_%'"
wp option delete 'updraft_auto_updates'
wp option delete 'updraft_ssl_nossl'
wp option delete 'updraft_log_syslog'
wp option delete 'updraft_ssl_useservercerts'
wp option delete 'updraft_ssl_disableverify'
wp option delete 'updraft_split_every'
wp option delete 'updraft_dir'
wp option delete 'updraft_report_warningsonly'
wp option delete 'updraft_report_wholebackup'
wp option delete 'updraft_report_dbbackup'
wp option delete 'updraft_autobackup_default'
wp option delete 'updraft_delete_local'
wp option delete 'updraft_debug_mode'
wp option delete 'updraft_extradbs'
wp option delete 'updraft_backupdb_nonwp'
wp option delete 'updraft_include_plugins'
wp option delete 'updraft_include_themes'
wp option delete 'updraft_include_uploads'
wp option delete 'updraft_include_others'
wp option delete 'updraft_include_wpcore'
wp option delete 'updraft_include_wpcore_exclude'
wp option delete 'updraft_include_more'
wp option delete 'updraft_include_more_path'
wp option delete 'updraft_include_uploads_exclude'
wp option delete 'updraft_include_others_exclude'
wp option delete 'updraft_starttime_files'
wp option delete 'updraft_starttime_db'
wp option delete 'updraft_startday_files'
wp option delete 'updraft_startday_db'
wp option delete '_elementor_global_css'
wp option delete 'elementor-custom-breakpoints-files'
wp option delete 'cctm_data'
wp option delete 'updraft_task_manager_dbversion'
wp option delete 'updraft_task_manager_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'
wp transient delete 'updraft_initial_resume_interval'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dashboard_news' OR option_name LIKE '_site_transient_%_dashboard_news'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_count' OR option_name LIKE '_site_transient_%_count'"
wp transient delete 'udvault_last_config'
wp transient delete 'updraftvault_quota_numeric'
wp transient delete 'updraftvault_quota_text'
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'updraft_backup'
wp cron event delete 'updraft_backup_database'
wp cron event delete 'updraftplus_clean_temporary_files'
wp cron event delete 'updraft_backup_resume'
wp cron event delete 'updraft_backup_increments'
wp cron event delete 'updraftplus_temporary_clone_refresh_connection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_dashboard_news'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_dashboard_news'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_dashboard_news'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_dashboard_news'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uc_allow_auto_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uc_allow_auto_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uc_allow_auto_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uc_allow_auto_login'"
