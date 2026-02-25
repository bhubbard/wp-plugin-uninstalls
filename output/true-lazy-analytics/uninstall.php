<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tlap_add_analytics_option_main');
delete_site_option('tlap_add_analytics_option_main');
delete_option('tlap_add_analytics_option_counters');
delete_site_option('tlap_add_analytics_option_counters');
delete_option('tlap_add_analytics_option_metrica');
delete_site_option('tlap_add_analytics_option_metrica');
delete_option('tlap_add_analytics_option_speedup');
delete_site_option('tlap_add_analytics_option_speedup');

