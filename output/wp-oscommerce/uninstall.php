<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wposwidget_new');
delete_site_option('wposwidget_new');
delete_option('wposcdir');
delete_site_option('wposcdir');
delete_option('wposcimh_w');
delete_site_option('wposcimh_w');
delete_option('wposcimw_w');
delete_site_option('wposcimw_w');
delete_option('limit_new_w');
delete_site_option('limit_new_w');
delete_option('wposwidget_rand');
delete_site_option('wposwidget_rand');
delete_option('limit_rand_w');
delete_site_option('limit_rand_w');
delete_option('wposcimh');
delete_site_option('wposcimh');
delete_option('wposcimw');
delete_site_option('wposcimw');
delete_option('limit_new');
delete_site_option('limit_new');
delete_option('limit_rand');
delete_site_option('limit_rand');
delete_option('limit_best');
delete_site_option('limit_best');

