<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glxtm_sidebars');
delete_site_option('glxtm_sidebars');
delete_option('glxtm_items');
delete_site_option('glxtm_items');
delete_option('glxtm_general');
delete_site_option('glxtm_general');
delete_option('glxtm_welcome_shown');
delete_site_option('glxtm_welcome_shown');
delete_option('glxtm_rate_time');
delete_site_option('glxtm_rate_time');

