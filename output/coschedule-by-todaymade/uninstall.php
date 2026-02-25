<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tm_coschedule_token');
delete_site_option('tm_coschedule_token');
delete_option('tm_coschedule_calendar_id');
delete_site_option('tm_coschedule_calendar_id');
delete_option('tm_coschedule_wordpress_site_id');
delete_site_option('tm_coschedule_wordpress_site_id');
delete_option('tm_coschedule_synced_build');
delete_site_option('tm_coschedule_synced_build');
delete_option('tm_coschedule_activation_redirect');
delete_site_option('tm_coschedule_activation_redirect');
delete_option('tm_coschedule_id');
delete_site_option('tm_coschedule_id');
delete_option('tm_coschedule_custom_post_types_list');
delete_site_option('tm_coschedule_custom_post_types_list');

