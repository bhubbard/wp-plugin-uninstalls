<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsf_rt_general_settings');
delete_site_option('bsf_rt_general_settings');
delete_option('bsf_rt_saved_msg');
delete_site_option('bsf_rt_saved_msg');
delete_option('bsf_rt_read_time_settings');
delete_site_option('bsf_rt_read_time_settings');
delete_option('bsf_rt_progress_bar_settings');
delete_site_option('bsf_rt_progress_bar_settings');

