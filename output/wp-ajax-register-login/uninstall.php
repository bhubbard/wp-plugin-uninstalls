<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wparl-position');
delete_site_option('wparl-position');
delete_option('wparl-bootstrap-css');
delete_site_option('wparl-bootstrap-css');

