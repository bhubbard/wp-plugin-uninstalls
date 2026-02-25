<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ladminemail');
delete_site_option('ladminemail');
delete_option('ltimezone');
delete_site_option('ltimezone');
delete_option('lprofile');
delete_site_option('lprofile');

