<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpterapeut_clicktext');
delete_site_option('wpterapeut_clicktext');
delete_option('wpterapeut_booklink');
delete_site_option('wpterapeut_booklink');
delete_option('clicktext');
delete_site_option('clicktext');
delete_option('link');
delete_site_option('link');

