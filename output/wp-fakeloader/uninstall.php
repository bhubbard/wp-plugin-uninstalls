<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fakeloader-delay-time');
delete_site_option('fakeloader-delay-time');
delete_option('fakeloader-z-index');
delete_site_option('fakeloader-z-index');
delete_option('fakeloader-spinner');
delete_site_option('fakeloader-spinner');
delete_option('fakeloader-bg-color');
delete_site_option('fakeloader-bg-color');
delete_option('fakeloader-is-image');
delete_site_option('fakeloader-is-image');
delete_option('fakeloader-spinner-file');
delete_site_option('fakeloader-spinner-file');

