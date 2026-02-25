<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpjsp');
delete_site_option('wpjsp');
delete_option('wpjsp-mouse');
delete_site_option('wpjsp-mouse');

