<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('attributio_property');
delete_site_option('attributio_property');
delete_option('attributio_custom_hit');
delete_site_option('attributio_custom_hit');

