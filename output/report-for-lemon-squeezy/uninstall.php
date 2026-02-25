<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('repofole_apikey');
delete_site_option('repofole_apikey');
delete_option('repofole_access_allowed');
delete_site_option('repofole_access_allowed');
delete_option('repofole_dwnitem');
delete_site_option('repofole_dwnitem');
delete_option('repofole_donumber');
delete_site_option('repofole_donumber');

