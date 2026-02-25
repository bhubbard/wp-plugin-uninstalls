<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simply-bootstrap-css');
delete_site_option('simply-bootstrap-css');
delete_option('simply-bootstrap-js');
delete_site_option('simply-bootstrap-js');

