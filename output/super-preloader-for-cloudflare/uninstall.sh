#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpff_sp_worker_url'
wp option delete 'wpff_sp_proxy_list_url'
wp option delete 'wpff_sp_sitemap_url'
wp option delete 'wpff_sp_cron_interval'
wp option delete 'wpff_sp_shared_secret'
wp option delete 'wpff_sp_preload_stats'
wp option delete 'wpff_sp_custom_hours'
wp option delete 'wpff_sp_cron_start_hour'
wp option delete 'wpff_sp_cron_start_minute'
wp option delete 'wpff_sp_log_migrated'
wp option delete 'wpff_sp_sitemap_url_count'
wp option delete 'wpff_sp_batch_size'
wp option delete 'wpff_sp_delay_between_urls'
wp option delete 'wpff_sp_delete_data_on_uninstall'

# Delete Transients
wp transient delete 'wpff_sp_preload_cursor'
wp transient delete 'wpff_sp_preload_urls'
wp transient delete 'wpff_sp_stop_flag'
wp transient delete 'wpff_sp_batch_stats'

# Clear Cron Jobs
wp cron event delete 'wpff_sp_run_preloader'

