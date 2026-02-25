#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vasp_superuser_id'
wp option delete 'vasp_options'
wp option delete 'vasp_events_table_dimensions'
wp option delete 'vasp_cron_timezone'
wp option delete 'vasp_canonical_dimensions'
wp option delete 'vasp_articles_imported'
wp option delete 'vasp_db_version'
wp option delete 'vasp_last_cron_run'
wp option delete 'vasp_last_cron_error'
wp option delete 'vasp_last_cron_error_message'
wp option delete 'vasp_cron_rescheduled_to_4am'
wp option delete 'valserv_cron_fix_notice_shown'
wp option delete 'valserv_clearance_fix_notice_shown'
wp option delete 'valserv_options'

# Delete Transients
wp transient delete 'sp_post_totals'
wp transient delete 'vasp_daily_integrity_check'
wp transient delete 'vasp_file_tampering_alert'
wp transient delete 'vasp_last_save_time'
wp transient delete 'vasp_cron_last_init'
wp transient delete 'vasp_cron_running'
wp transient delete 'vasp_manual_cron_running'
wp transient delete 'vasp_ajax_cron_trigger'
wp transient delete 'vasp_menu_cache'

# Clear Cron Jobs
wp cron event delete 'vasp_daily_analytics_fetch'
wp cron event delete 'vasp_enforce_superuser_access'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vasp_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vasp_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vasp_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vasp_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vasp_sessions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vasp_sessions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vasp_sessions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vasp_sessions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vasp_cron_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vasp_cron_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vasp_cron_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vasp_cron_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vasp_clearance_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vasp_clearance_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vasp_clearance_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vasp_clearance_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vasp_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vasp_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vasp_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vasp_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vasp_last_privilege_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vasp_last_privilege_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vasp_last_privilege_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vasp_last_privilege_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vasp_clearance_integrity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vasp_clearance_integrity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vasp_clearance_integrity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vasp_clearance_integrity'"
