<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WP_SVGATOR_VERSION');
delete_site_option('WP_SVGATOR_VERSION');

