<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fsrm-pharagraph');
delete_site_option('fsrm-pharagraph');
delete_option('fsrm-alignment');
delete_site_option('fsrm-alignment');
delete_option('fsrm-adcode');
delete_site_option('fsrm-adcode');
delete_option('fsrm-tryagain');
delete_site_option('fsrm-tryagain');

