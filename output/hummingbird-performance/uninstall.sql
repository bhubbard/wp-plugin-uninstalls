-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wphb-cloudflare-dash-notice', 'wphb-notice-minification-optimized-show', 'wphb_run_onboarding', 'wphb_hide_ao_menu_status_animation', 'wphb-preset_configs', 'wphb-minification-show-config_modal', 'wphb-minification-show-advanced_modal', 'wphb-hide-tutorials', 'wphb-notice-cache-cleaned-show', 'wphb-notice-cache-global-cleared-show', 'wphb-notice-free-rated-later_date', 'wphb_do_minification_upgrade', 'wphb_show_upgrade_summary', 'active_sitewide_plugins', 'wphb-notice-legacy-critical-css-show', 'wphb-notice-free-deactivated-show', 'wphb-notice-free-rated-last-score', 'wp-smush-networkwide', 'wphb_compression_type', 'smush_global_stats', 'wphb-notice-free-rated-show', 'wphb_show_connected_modal', 'wphb_version', 'wphb-notice-uptime-info-show', 'wphb-notice-connect-for-site-monitoring-show', 'wphb_settings', 'wphb-track-plugin-activation', 'wphb-caching-data', 'wp-smush-show-black-friday', 'wphb-new-user-tour', 'wpmudev_apikey', 'allowedthemes', 'elementor_css_print_method', 'wphb_critical_css_log', 'wphb_process_queue', 'wphb-minification-files-scanned', 'wphb_plugin_timestamps', '_transient_timeout_wphb-minify-server-errors', 'wphb-minification-errors', 'wphb-minify-server-errors', 'wp-smush-settings', 'wphb-last-report', 'wphb-gzip-data', 'wphb_cs_process_queue', 'wphb-doing-report', 'wphb_infinite_loop_warning', 'wphb-processing', 'wphb-notice-ao-scan-completion-show', 'wphb-separate-comments', 'wphb-uptime-last-report');
DELETE FROM wp_options WHERE option_name IN ('wphb-uptime-remotely-enabled', 'wphb-minify-server-errors', 'wphb_cron_limit', 'wphb-fast-cgi-enabled', 'wphb_critical_css_log', 'wphb-cs-processing');
DELETE FROM wp_options WHERE option_name LIKE '%-show';
DELETE FROM wp_options WHERE option_name LIKE '%-data';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_hash', '_url', '_path', '_expires', '_handle_versions');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_hash', '_url', '_path', '_expires', '_handle_versions');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_hash', '_url', '_path', '_expires', '_handle_versions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_hash', '_url', '_path', '_expires', '_handle_versions');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-dismissed';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

