<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('postpeek_activated');
delete_site_option('postpeek_activated');
delete_option('postpeek_settings_visited');
delete_site_option('postpeek_settings_visited');
delete_option('postpeek_rating_notice');
delete_site_option('postpeek_rating_notice');
delete_option('postpeek_options');
delete_site_option('postpeek_options');

