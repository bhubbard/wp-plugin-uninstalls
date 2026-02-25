<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SALC_VERSION');
delete_site_option('SALC_VERSION');
delete_option('WPLANG_ADMIN');
delete_site_option('WPLANG_ADMIN');

