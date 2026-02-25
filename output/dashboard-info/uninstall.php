<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('likaBraBoxText');
delete_site_option('likaBraBoxText');
delete_option('likaBraBoxDisplayOnly');
delete_site_option('likaBraBoxDisplayOnly');

