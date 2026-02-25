<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('of_template');
delete_site_option('of_template');
delete_option('of_options');
delete_site_option('of_options');
delete_option('of_shortname');
delete_site_option('of_shortname');
delete_option('skh_turn_on');
delete_site_option('skh_turn_on');
delete_option('skh_bgcolor');
delete_site_option('skh_bgcolor');
delete_option('skh_color');
delete_site_option('skh_color');
delete_option('skh_custom_css');
delete_site_option('skh_custom_css');

