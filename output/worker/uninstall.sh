#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmb_stats_filter'
wp option delete 'mwp_incremental_update_active'
wp option delete 'mwp_worker_brand'
wp option delete 'mwp_maintenace_mode'
wp option delete 'mwp_core_autoupdate'
wp option delete 'mwp_recovering'
wp option delete 'mwp_container_parameters'
wp option delete 'mwp_container_site_parameters'
wp option delete 'mwp_service_key'
wp option delete 'mwp_incremental_recover_lock'
wp option delete 'mmb_network_admin_install'
wp option delete '_worker_public_key'
wp option delete '_worker_nossl_key'
wp option delete '_action_message_id'
wp option delete 'mwp_notifications'
wp option delete 'mwp_worker_configuration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%'"
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_version'
wp option delete 'user_hit_count'

# Delete Transients
wp transient delete 'mwp_recovery_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_n_%' OR option_name LIKE '_site_transient_n_%'"

# Clear Cron Jobs
wp cron event delete 'mwp_auto_update'
wp cron event delete 'mwp_check_for_post_update'
wp cron event delete 'mwp_update_public_keys'
wp cron event delete 'mwp_backup_tasks'
wp cron event delete 'mwp_notifications'
wp cron event delete 'mwp_datasend'

