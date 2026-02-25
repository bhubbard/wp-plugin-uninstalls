<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elephantm_maintenance_enabled');
delete_site_option('elephantm_maintenance_enabled');
delete_option('elephantm_maintenance_title');
delete_site_option('elephantm_maintenance_title');
delete_option('elephantm_maintenance_message');
delete_site_option('elephantm_maintenance_message');
delete_option('elephantm_maintenance_phone');
delete_site_option('elephantm_maintenance_phone');
delete_option('elephantm_maintenance_social');
delete_site_option('elephantm_maintenance_social');
delete_option('elephantm_maintenance_bg');
delete_site_option('elephantm_maintenance_bg');

