<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dispatch_countdown_enabled');
delete_site_option('dispatch_countdown_enabled');
delete_option('dispatch_countdown_wording');
delete_site_option('dispatch_countdown_wording');
delete_option('dispatch_countdown_monday');
delete_site_option('dispatch_countdown_monday');
delete_option('dispatch_countdown_tuesday');
delete_site_option('dispatch_countdown_tuesday');
delete_option('dispatch_countdown_wednesday');
delete_site_option('dispatch_countdown_wednesday');
delete_option('dispatch_countdown_thursday');
delete_site_option('dispatch_countdown_thursday');
delete_option('dispatch_countdown_friday');
delete_site_option('dispatch_countdown_friday');
delete_option('dispatch_countdown_saturday');
delete_site_option('dispatch_countdown_saturday');
delete_option('dispatch_countdown_sunday');
delete_site_option('dispatch_countdown_sunday');
delete_option('dispatch_countdown_blacklist');
delete_site_option('dispatch_countdown_blacklist');

