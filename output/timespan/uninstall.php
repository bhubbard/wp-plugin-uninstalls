<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpm');
delete_site_option('wpm');
delete_option('lt1');
delete_site_option('lt1');
delete_option('gt1');
delete_site_option('gt1');
delete_option('gt1lt2po');
delete_site_option('gt1lt2po');
delete_option('gt1po');
delete_site_option('gt1po');
delete_option('autots');
delete_site_option('autots');

