<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alsointhisseries_activate');
delete_site_option('alsointhisseries_activate');
delete_option('alsointhisseries_deactivate');
delete_site_option('alsointhisseries_deactivate');

