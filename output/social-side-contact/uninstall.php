<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbp');
delete_site_option('fbp');
delete_option('fbm');
delete_site_option('fbm');
delete_option('line');
delete_site_option('line');
delete_option('phone');
delete_site_option('phone');
delete_option('mail');
delete_site_option('mail');

