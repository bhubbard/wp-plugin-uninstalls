<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('VisitorLAB_script');
delete_site_option('VisitorLAB_script');
delete_option('visitorlab_script');
delete_site_option('visitorlab_script');
delete_option('visitorlab_version');
delete_site_option('visitorlab_version');

