<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipgpgeo_georules');
delete_site_option('ipgpgeo_georules');
delete_option('ipgpgeo_apikey');
delete_site_option('ipgpgeo_apikey');

