<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pad');
delete_site_option('pad');
delete_option('datumtijdkoppel');
delete_site_option('datumtijdkoppel');
delete_option('spatieren');
delete_site_option('spatieren');

