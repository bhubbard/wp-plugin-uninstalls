<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ff_color');
delete_site_option('ff_color');
delete_option('ff_position');
delete_site_option('ff_position');
delete_option('ff_email');
delete_site_option('ff_email');

