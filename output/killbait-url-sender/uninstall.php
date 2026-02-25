<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('killbait_apikey');
delete_site_option('killbait_apikey');
delete_option('killbait_language');
delete_site_option('killbait_language');
delete_option('killbait_categories');
delete_site_option('killbait_categories');

