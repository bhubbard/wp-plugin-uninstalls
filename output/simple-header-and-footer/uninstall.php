<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shaf_dismissed');
delete_site_option('shaf_dismissed');
delete_option('shaf');
delete_site_option('shaf');

