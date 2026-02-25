<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('devbsitr_settings');
delete_site_option('devbsitr_settings');
delete_option('devbsitr_version');
delete_site_option('devbsitr_version');

