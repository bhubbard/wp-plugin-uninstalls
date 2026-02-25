<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpic_phone');
delete_site_option('rpic_phone');
delete_option('rpic_message');
delete_site_option('rpic_message');
delete_option('rpic_buttontext');
delete_site_option('rpic_buttontext');
delete_option('rpic_enabled');
delete_site_option('rpic_enabled');

