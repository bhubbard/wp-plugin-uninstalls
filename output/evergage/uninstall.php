<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evergage_account');
delete_site_option('evergage_account');
delete_option('evergage_dataset');
delete_site_option('evergage_dataset');
delete_option('evergage_track_anonymous');
delete_site_option('evergage_track_anonymous');
delete_option('evergage_synchronous');
delete_site_option('evergage_synchronous');
delete_option('evergage_promote');
delete_site_option('evergage_promote');
delete_option('evergage_onmessage');
delete_site_option('evergage_onmessage');
delete_option('evergage_siteconfig');
delete_site_option('evergage_siteconfig');
delete_option('evergage_apitoken');
delete_site_option('evergage_apitoken');
delete_option('evergage_available_servers');
delete_site_option('evergage_available_servers');
delete_option('evergage_connectivity_time');
delete_site_option('evergage_connectivity_time');

