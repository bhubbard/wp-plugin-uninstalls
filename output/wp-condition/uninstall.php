<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsc_wp_conditions_settings');
delete_site_option('wsc_wp_conditions_settings');
delete_option('pagespeedonline_dates_arr');
delete_site_option('pagespeedonline_dates_arr');
delete_option('wpfixit_con_admin_load_times');
delete_site_option('wpfixit_con_admin_load_times');
delete_option('wpfixit_con_load_times');
delete_site_option('wpfixit_con_load_times');

