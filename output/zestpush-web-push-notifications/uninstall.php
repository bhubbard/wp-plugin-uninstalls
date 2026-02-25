<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_plugin_option');
delete_site_option('my_plugin_option');
delete_option('zest_status');
delete_site_option('zest_status');
delete_option('zest_plan');
delete_site_option('zest_plan');
delete_option('zest_metastatus');
delete_site_option('zest_metastatus');
delete_option('zest_segmentstatus');
delete_site_option('zest_segmentstatus');
delete_option('zest_serviceworker');
delete_site_option('zest_serviceworker');
delete_option('zest_init_status');
delete_site_option('zest_init_status');
delete_option('activate_zest');
delete_site_option('activate_zest');
delete_option('zest_active_api');
delete_site_option('zest_active_api');
delete_option('zest_user_id');
delete_site_option('zest_user_id');
delete_option('zest_site_id');
delete_site_option('zest_site_id');
delete_option('zest_endpoint');
delete_site_option('zest_endpoint');
delete_option('zest_domain');
delete_site_option('zest_domain');
delete_option('zestpush_push_response');
delete_site_option('zestpush_push_response');

