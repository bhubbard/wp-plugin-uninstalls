<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_colorthemeadmin');
delete_site_option('_colorthemeadmin');
delete_option('_colorthemeadmintop');
delete_site_option('_colorthemeadmintop');
delete_option('_colorthemeadminmain');
delete_site_option('_colorthemeadminmain');
delete_option('_colorthemeadminwptop');
delete_site_option('_colorthemeadminwptop');

