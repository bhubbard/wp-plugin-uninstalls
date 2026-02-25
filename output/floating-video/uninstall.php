<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FlVid_distance_from_edge');
delete_site_option('FlVid_distance_from_edge');
delete_option('FlVid_position');
delete_site_option('FlVid_position');
delete_option('FlVid_percentage');
delete_site_option('FlVid_percentage');
delete_option('FlVid_showclosebutton');
delete_site_option('FlVid_showclosebutton');

