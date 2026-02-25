<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agysocial_footer_enabled');
delete_site_option('agysocial_footer_enabled');
delete_option('agysocial_footer_number');
delete_site_option('agysocial_footer_number');
delete_option('agysocial_footer_position');
delete_site_option('agysocial_footer_position');
delete_option('agysocial_footer_style');
delete_site_option('agysocial_footer_style');

