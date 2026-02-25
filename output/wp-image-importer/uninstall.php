<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpiimp_setting');
delete_site_option('wpiimp_setting');
delete_option('WPIIMP_VERSION_NO');
delete_site_option('WPIIMP_VERSION_NO');
delete_option('wpiimp_fb_credentials');
delete_site_option('wpiimp_fb_credentials');

