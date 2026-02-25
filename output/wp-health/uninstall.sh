#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_umbrella_disallow_one_click_access'
wp option delete 'wp_health_allow_tracking'
wp option delete 'wp_umbrella_backup_version'
wp option delete 'wp_umbrella_backup_data_process'
wp option delete 'wphealth_version'
wp option delete 'wp_health_version_god_handler'
wp option delete 'wp_umbrella_number_trial_auto_install'
wp option delete 'wp_umbrella_login'
wp option delete 'wp_umbrella_backup_suffix_security'
wp option delete 'active_sitewide_plugins'
wp option delete 'wp_umbrella_backup_profile_data'
wp option delete 'wp_umbrella_backup_profile_database_data'
wp option delete 'vhp_varnish_ip'
wp option delete 'auto_core_update_failed'
wp option delete 'acf_pro_license'
wp option delete 'rg_gforms_key'
wp option delete 'gform_license_info'
wp option delete 'rank_math_connect_data'
wp option delete 'secupress_pro_consumer_key'
wp option delete 'secupress_pro_consumer_email'
wp option delete 'woocommerce_helper_data'
wp option delete 'wpforms_license'
wp option delete 'wp_rocket_settings'
wp option delete 'wpseo_premium_license_status'
wp option delete 'current_theme'
wp option delete 'update_themes'
wp option delete '_site_transient_update_core'
wp option delete 'wp-health'
wp option delete '_wp_umbrella_is_new_hash'

# Delete Transients
wp transient delete 'wp_umbrella_white_label_data_cache'
wp transient delete 'update_themes'
wp transient delete 'secupress_pro_license_data'
wp transient delete '_woocommerce_helper_subscriptions'
wp transient delete 'yoast_premium_site_information'
wp transient delete 'et_update_themes'
wp transient delete 'wp_umbrella_snapshot_lock'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'wp_umbrella_snapshot_data_run_queue'
wp cron event delete 'wp_umbrella_error_check_run_queue'
wp cron event delete 'wp_umbrella_clean_table_run_queue'
wp cron event delete 'wp_umbrella_task_backup_run_queue'
wp cron event delete 'wp_umbrella_run_manual_backup_task'
wp cron event delete 'wp_umbrella_stop_manual_backup_task'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
