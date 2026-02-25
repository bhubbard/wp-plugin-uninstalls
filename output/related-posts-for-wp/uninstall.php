<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rp4wp');
delete_site_option('rp4wp');
delete_option('rp4wp_do_install');
delete_site_option('rp4wp_do_install');
delete_option('rp4wp_install_date');
delete_site_option('rp4wp_install_date');
delete_option('rp4wp_hide_nag');
delete_site_option('rp4wp_hide_nag');

