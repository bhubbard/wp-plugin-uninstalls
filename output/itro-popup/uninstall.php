<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('itro_curr_ver');
delete_site_option('itro_curr_ver');
delete_option('itro_prev_ver');
delete_site_option('itro_prev_ver');

