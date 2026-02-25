<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csas_options');
delete_site_option('csas_options');
delete_option('csas_db_version');
delete_site_option('csas_db_version');

