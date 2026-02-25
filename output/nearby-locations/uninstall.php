<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajf-nl-google-api-key');
delete_site_option('ajf-nl-google-api-key');
delete_option('ajf-nl-center-address');
delete_site_option('ajf-nl-center-address');
delete_option('ajf-nl-color-background');
delete_site_option('ajf-nl-color-background');
delete_option('ajf-nl-color-panel');
delete_site_option('ajf-nl-color-panel');
delete_option('ajf-nl-color-text');
delete_site_option('ajf-nl-color-text');
delete_option('ajf-nl-version');
delete_site_option('ajf-nl-version');

