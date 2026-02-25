<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_podcasting_podtrac_analytics_episode_measurement_service');
delete_site_option('ss_podcasting_podtrac_analytics_episode_measurement_service');
delete_option('ss_podcasting_podtrac_blubrry_stats_episode_measurement_service');
delete_site_option('ss_podcasting_podtrac_blubrry_stats_episode_measurement_service');
delete_option('ss_podcasting_podtrac_analytics_episode_measurement_service_radio');
delete_site_option('ss_podcasting_podtrac_analytics_episode_measurement_service_radio');
delete_option('ss_podcasting_podtrac_blubrry_stats_episode_measurement_service_name');
delete_site_option('ss_podcasting_podtrac_blubrry_stats_episode_measurement_service_name');
delete_option('ss_podcasting_podtrac_blubrry_stats_episode_measurement_service_radio');
delete_site_option('ss_podcasting_podtrac_blubrry_stats_episode_measurement_service_radio');
delete_option('ss_podcasting_podtrac_analytics_refresh_rss_cache');
delete_site_option('ss_podcasting_podtrac_analytics_refresh_rss_cache');

