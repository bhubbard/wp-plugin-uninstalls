<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_activation_time');
delete_site_option('plugin_activation_time');
delete_option('donot_disturb');
delete_site_option('donot_disturb');
delete_option('thepack_remind_me');
delete_site_option('thepack_remind_me');
delete_option('rtrs_rated');
delete_site_option('rtrs_rated');
delete_option('xltab');
delete_site_option('xltab');

