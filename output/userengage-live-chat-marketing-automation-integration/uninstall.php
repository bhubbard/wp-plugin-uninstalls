<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('UserEngageScript_domain');
delete_site_option('UserEngageScript_domain');
delete_option('UserEngageScript__apiKey');
delete_site_option('UserEngageScript__apiKey');
delete_option('UserEngageScript_toggle_version');
delete_site_option('UserEngageScript_toggle_version');

