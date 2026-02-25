<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aklamatorTwitchFVChannel');
delete_site_option('aklamatorTwitchFVChannel');
delete_option('aklamatorTwitchFVApplicationID');
delete_site_option('aklamatorTwitchFVApplicationID');
delete_option('aklamatorTwitchFVPoweredBy');
delete_site_option('aklamatorTwitchFVPoweredBy');
delete_option('aklamatorTwitchFVSingleWidgetID');
delete_site_option('aklamatorTwitchFVSingleWidgetID');
delete_option('aklamatorTwitchFVPageWidgetID');
delete_site_option('aklamatorTwitchFVPageWidgetID');
delete_option('aklamatorTwitchFVSingleWidgetTitle');
delete_site_option('aklamatorTwitchFVSingleWidgetTitle');
delete_option('aklamatorTwitchFVShowOrDontShow');
delete_site_option('aklamatorTwitchFVShowOrDontShow');
delete_option('aklamatorTwitchFVPhotoURL');
delete_site_option('aklamatorTwitchFVPhotoURL');

