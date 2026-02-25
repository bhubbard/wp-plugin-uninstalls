<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f12_prof_settings');
delete_site_option('f12_prof_settings');
delete_option('f12_prof_crawl_status');
delete_site_option('f12_prof_crawl_status');
delete_option('f12_prof_crawl_lock');
delete_site_option('f12_prof_crawl_lock');
delete_option('f12_prof_admin_notices');
delete_site_option('f12_prof_admin_notices');
delete_option('f12_prof_db_version');
delete_site_option('f12_prof_db_version');
delete_option('f12_perf_db_version');
delete_site_option('f12_perf_db_version');
delete_option('f12_prof_asset_conflicts');
delete_site_option('f12_prof_asset_conflicts');
delete_option('f12_prof_asset_suggestions');
delete_site_option('f12_prof_asset_suggestions');
delete_option('f12_prof_asset_suggestions_dismissed');
delete_site_option('f12_prof_asset_suggestions_dismissed');
delete_option('f12_prof_asset_suggestions_generated_at');
delete_site_option('f12_prof_asset_suggestions_generated_at');
delete_option('f12_prof_key_preloads');
delete_site_option('f12_prof_key_preloads');
delete_option('f12_prof_checklist_manual');
delete_site_option('f12_prof_checklist_manual');
delete_option('f12_prof_image_opt_status');
delete_site_option('f12_prof_image_opt_status');
delete_option('f12_prof_asset_scan_status');
delete_site_option('f12_prof_asset_scan_status');
delete_option('f12_prof_asset_scan_lock');
delete_site_option('f12_prof_asset_scan_lock');
delete_option('f12_prof_asset_rules_cache');
delete_site_option('f12_prof_asset_rules_cache');
delete_option('f12_prof_last_pagespeed_run');
delete_site_option('f12_prof_last_pagespeed_run');
delete_option('f12_prof_table_owners');
delete_site_option('f12_prof_table_owners');
delete_option('f12_prof_autoload_snapshot');
delete_site_option('f12_prof_autoload_snapshot');
delete_option('f12_perf_settings');
delete_site_option('f12_perf_settings');
delete_option('f12_perf_crawl_status');
delete_site_option('f12_perf_crawl_status');
delete_option('f12_perf_crawl_lock');
delete_site_option('f12_perf_crawl_lock');
delete_option('f12_perf_admin_notices');
delete_site_option('f12_perf_admin_notices');
delete_option('f12_perf_asset_scan_status');
delete_site_option('f12_perf_asset_scan_status');
delete_option('f12_perf_asset_scan_lock');
delete_site_option('f12_perf_asset_scan_lock');
delete_option('f12_perf_asset_rules_cache');
delete_site_option('f12_perf_asset_rules_cache');
delete_option('f12_perf_asset_conflicts');
delete_site_option('f12_perf_asset_conflicts');
delete_option('f12_perf_asset_suggestions');
delete_site_option('f12_perf_asset_suggestions');
delete_option('f12_perf_asset_suggestions_dismissed');
delete_site_option('f12_perf_asset_suggestions_dismissed');
delete_option('f12_perf_asset_suggestions_generated_at');
delete_site_option('f12_perf_asset_suggestions_generated_at');
delete_option('f12_perf_image_opt_status');
delete_site_option('f12_perf_image_opt_status');
delete_option('f12_perf_last_pagespeed_run');
delete_site_option('f12_perf_last_pagespeed_run');
delete_option('f12_perf_table_owners');
delete_site_option('f12_perf_table_owners');

// Delete Transients
delete_transient('f12_prof_last_pagespeed_run');
delete_site_transient('f12_prof_last_pagespeed_run');
delete_transient('f12_prof_checklist_auto');
delete_site_transient('f12_prof_checklist_auto');

// Clear Cron Jobs
wp_clear_scheduled_hook('f12_prof_scheduled_crawl');
wp_clear_scheduled_hook('f12_prof_scheduled_cleanup');
wp_clear_scheduled_hook('f12_prof_process_crawl');
wp_clear_scheduled_hook('f12_prof_process_images');
wp_clear_scheduled_hook('f12_prof_process_asset_scan');
wp_clear_scheduled_hook('f12_prof_rescan_single_url');
wp_clear_scheduled_hook('f12_prof_process_lqip');
wp_clear_scheduled_hook('f12_prof_scheduled_pagespeed');
wp_clear_scheduled_hook('f12_perf_scheduled_crawl');
wp_clear_scheduled_hook('f12_perf_scheduled_cleanup');
wp_clear_scheduled_hook('f12_perf_process_crawl');
wp_clear_scheduled_hook('f12_perf_process_images');
wp_clear_scheduled_hook('f12_perf_process_asset_scan');
wp_clear_scheduled_hook('f12_perf_rescan_single_url');

