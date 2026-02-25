<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wechef_bgcolor');
delete_site_option('wechef_bgcolor');
delete_option('wechef_txtcolor');
delete_site_option('wechef_txtcolor');
delete_option('wechef_font');
delete_site_option('wechef_font');
delete_option('wechef_id');
delete_site_option('wechef_id');

