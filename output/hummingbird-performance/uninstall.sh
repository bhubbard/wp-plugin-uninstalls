#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wphb-cloudflare-dash-notice'
wp option delete 'wphb-notice-minification-optimized-show'
wp option delete 'wphb_run_onboarding'
wp option delete 'wphb_hide_ao_menu_status_animation'
wp option delete 'wphb-preset_configs'
wp option delete 'wphb-minification-show-config_modal'
wp option delete 'wphb-minification-show-advanced_modal'
wp option delete 'wphb-hide-tutorials'
wp option delete 'wphb-notice-cache-cleaned-show'
wp option delete 'wphb-notice-cache-global-cleared-show'
wp option delete 'wphb-notice-free-rated-later_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-show'"
wp option delete 'wphb_do_minification_upgrade'
wp option delete 'wphb_show_upgrade_summary'
wp option delete 'active_sitewide_plugins'
wp option delete 'wphb-notice-legacy-critical-css-show'
wp option delete 'wphb-notice-free-deactivated-show'
wp option delete 'wphb-notice-free-rated-last-score'
wp option delete 'wp-smush-networkwide'
wp option delete 'wphb_compression_type'
wp option delete 'smush_global_stats'
wp option delete 'wphb-notice-free-rated-show'
wp option delete 'wphb_show_connected_modal'
wp option delete 'wphb_version'
wp option delete 'wphb-notice-uptime-info-show'
wp option delete 'wphb-notice-connect-for-site-monitoring-show'
wp option delete 'wphb_settings'
wp option delete 'wphb-track-plugin-activation'
wp option delete 'wphb-caching-data'
wp option delete 'wp-smush-show-black-friday'
wp option delete 'wphb-new-user-tour'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-data'"
wp option delete 'wpmudev_apikey'
wp option delete 'allowedthemes'
wp option delete 'elementor_css_print_method'
wp option delete 'wphb_critical_css_log'
wp option delete 'wphb_process_queue'
wp option delete 'wphb-minification-files-scanned'
wp option delete 'wphb_plugin_timestamps'
wp option delete '_transient_timeout_wphb-minify-server-errors'
wp option delete 'wphb-minification-errors'
wp option delete 'wphb-minify-server-errors'
wp option delete 'wp-smush-settings'
wp option delete 'wphb-last-report'
wp option delete 'wphb-gzip-data'
wp option delete 'wphb_cs_process_queue'

# Delete Transients
wp transient delete 'wphb-doing-report'
wp transient delete 'wphb_infinite_loop_warning'
wp transient delete 'wphb-processing'
wp transient delete 'wphb-notice-ao-scan-completion-show'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wphb-separate-comments'
wp transient delete 'wphb-uptime-last-report'
wp transient delete 'wphb-uptime-remotely-enabled'
wp transient delete 'wphb-minify-server-errors'
wp transient delete 'wphb_cron_limit'
wp transient delete 'wphb-fast-cgi-enabled'
wp transient delete 'wphb_critical_css_log'
wp transient delete 'wphb-cs-processing'

# Clear Cron Jobs
wp cron event delete 'wphb_performance_report'
wp cron event delete 'wphb_uptime_report'
wp cron event delete 'wphb_database_report'
wp cron event delete 'wphb_minify_clear_files'
wp cron event delete 'wphb_clear_logs'
wp cron event delete 'wphb_database_cleanup'
wp cron event delete 'wphb_hummingbird_cleanup'
wp cron event delete 'wphb_cs_process_queue_cron'
wp cron event delete 'wphb_cs_ping_queue_cron'
wp cron event delete 'wphb_get_delay_js_exclusion'
wp cron event delete 'wphb_load_exclusion_list_schedule_single_event'
wp cron event delete 'wphb_minify_process_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_handle_versions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_handle_versions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_handle_versions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_handle_versions'"
