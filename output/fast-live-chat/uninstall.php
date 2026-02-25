<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mlc_status');
delete_site_option('mlc_status');
delete_option('mcl_fb_user');
delete_site_option('mcl_fb_user');
delete_option('mlc_float');
delete_site_option('mlc_float');
delete_option('mlc_position');
delete_site_option('mlc_position');

