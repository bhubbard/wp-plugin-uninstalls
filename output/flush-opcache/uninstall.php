<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flush-opcache-upgrade');
delete_site_option('flush-opcache-upgrade');
delete_option('flush-opcache-hide-button');
delete_site_option('flush-opcache-hide-button');

