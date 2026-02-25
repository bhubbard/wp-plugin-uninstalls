<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aklamatorFVChannelURL');
delete_site_option('aklamatorFVChannelURL');
delete_option('aklamatorFVApplicationID');
delete_site_option('aklamatorFVApplicationID');
delete_option('aklamatorFVPoweredBy');
delete_site_option('aklamatorFVPoweredBy');
delete_option('aklamatorFVSingleWidgetID');
delete_site_option('aklamatorFVSingleWidgetID');
delete_option('aklamatorFVPageWidgetID');
delete_site_option('aklamatorFVPageWidgetID');
delete_option('aklamatorFVSingleWidgetTitle');
delete_site_option('aklamatorFVSingleWidgetTitle');
delete_option('aklamatorFVShowOrDontShow');
delete_site_option('aklamatorFVShowOrDontShow');
delete_option('aklamatorFVPhotoURL');
delete_site_option('aklamatorFVPhotoURL');
delete_option('aklamatorFVintroURL');
delete_site_option('aklamatorFVintroURL');

