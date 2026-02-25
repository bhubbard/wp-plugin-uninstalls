<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Ciusan_NiceScroll');
delete_site_option('Ciusan_NiceScroll');

