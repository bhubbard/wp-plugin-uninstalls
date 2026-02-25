<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('winkEnvironment');
delete_site_option('winkEnvironment');
delete_option('winkcontentTime');
delete_site_option('winkcontentTime');
delete_option('winkData');
delete_site_option('winkData');
delete_option('winkcontentBearer');
delete_site_option('winkcontentBearer');
delete_option('winkdataTime');
delete_site_option('winkdataTime');
delete_option('winkClientId');
delete_site_option('winkClientId');

