<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cityevents_default_city');
delete_site_option('cityevents_default_city');
delete_option('cityevents_default_limit');
delete_site_option('cityevents_default_limit');
delete_option('cityevents_default_cache_minutes');
delete_site_option('cityevents_default_cache_minutes');
delete_option('cityevents_default_date_format');
delete_site_option('cityevents_default_date_format');

