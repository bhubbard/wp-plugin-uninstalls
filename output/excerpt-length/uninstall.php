<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lk-excerpt-length-value');
delete_site_option('lk-excerpt-length-value');
delete_option('lk-excerpt-suffix-value');
delete_site_option('lk-excerpt-suffix-value');

