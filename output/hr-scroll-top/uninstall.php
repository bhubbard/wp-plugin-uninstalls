<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hrsticoninsert');
delete_site_option('hrsticoninsert');
delete_option('hrstbgcolor');
delete_site_option('hrstbgcolor');
delete_option('hrsthover');
delete_site_option('hrsthover');
delete_option('hrsticon-left-right');
delete_site_option('hrsticon-left-right');
delete_option('hrsticon-roundcorner');
delete_site_option('hrsticon-roundcorner');
delete_option('hrstspeed');
delete_site_option('hrstspeed');
delete_option('hrst_plugin_do_activated');
delete_site_option('hrst_plugin_do_activated');

