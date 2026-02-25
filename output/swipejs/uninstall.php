<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sjs_start');
delete_site_option('sjs_start');
delete_option('sjs_speed');
delete_site_option('sjs_speed');
delete_option('sjs_delay');
delete_site_option('sjs_delay');
delete_option('sjs_controls');
delete_site_option('sjs_controls');
delete_option('sjs_pagination');
delete_site_option('sjs_pagination');

