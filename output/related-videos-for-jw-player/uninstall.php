<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rvjwp-image');
delete_site_option('rvjwp-image');
delete_option('rvjwp-field');
delete_site_option('rvjwp-field');

