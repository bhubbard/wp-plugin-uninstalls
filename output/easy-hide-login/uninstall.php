<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpseh_l01gnhdlwp');
delete_site_option('wpseh_l01gnhdlwp');

