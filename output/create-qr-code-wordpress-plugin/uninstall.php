<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('correction');
delete_site_option('correction');
delete_option('size');
delete_site_option('size');

