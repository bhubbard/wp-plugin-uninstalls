<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ogtype');
delete_site_option('ogtype');
delete_option('fbimage');
delete_site_option('fbimage');
delete_option('ogdescription');
delete_site_option('ogdescription');
delete_option('fbadmin');
delete_site_option('fbadmin');
delete_option('fbpageid');
delete_site_option('fbpageid');
delete_option('fbappid');
delete_site_option('fbappid');

