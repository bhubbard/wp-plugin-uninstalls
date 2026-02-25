<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cssoptimizer_options_enable');
delete_site_option('cssoptimizer_options_enable');
delete_option('cssoptimizer_options_token');
delete_site_option('cssoptimizer_options_token');
delete_option('cssoptimizer_options_generateccss');
delete_site_option('cssoptimizer_options_generateccss');
delete_option('cssoptimizer_options_safelist');
delete_site_option('cssoptimizer_options_safelist');
delete_option('cssoptimizer_options_limitpagepost');
delete_site_option('cssoptimizer_options_limitpagepost');
delete_option('cssoptimizer_options_exclude');
delete_site_option('cssoptimizer_options_exclude');
delete_option('cssoptimizer_options_exclude_css');
delete_site_option('cssoptimizer_options_exclude_css');
delete_option('cssoptimizer_cache_clean');
delete_site_option('cssoptimizer_cache_clean');
delete_option('cssoptimizer_activation_redirect');
delete_site_option('cssoptimizer_activation_redirect');
delete_option('cssoptimizer_first_time_guide');
delete_site_option('cssoptimizer_first_time_guide');

// Delete Transients
delete_transient('cssop_ccss_queue');
delete_site_transient('cssop_ccss_queue');

// Clear Cron Jobs
wp_clear_scheduled_hook('cssoptimizer_purge_queue');
wp_clear_scheduled_hook('cssop_filter_job_queue_job');

