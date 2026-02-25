<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kgr-cookie-duration-long');
delete_site_option('kgr-cookie-duration-long');
delete_option('kgr-cookie-duration-short');
delete_site_option('kgr-cookie-duration-short');

