<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mptbd_general');
delete_site_option('mptbd_general');
delete_option('mptbd_timecon');
delete_site_option('mptbd_timecon');
delete_option('mptbd_review_pt');
delete_site_option('mptbd_review_pt');
delete_option('mptbd_activation_time');
delete_site_option('mptbd_activation_time');
delete_option('mptbd_plugin_version');
delete_site_option('mptbd_plugin_version');

