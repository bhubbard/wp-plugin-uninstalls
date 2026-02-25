<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mesi_int');
delete_site_option('mesi_int');
delete_option('mesi_slug');
delete_site_option('mesi_slug');
delete_option('giorni_int');
delete_site_option('giorni_int');
delete_option('giorni_slug');
delete_site_option('giorni_slug');

