<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcjt_version');
delete_site_option('wpcjt_version');
delete_option('wpcjt_template');
delete_site_option('wpcjt_template');
delete_option('wpcjt_delete_me');
delete_site_option('wpcjt_delete_me');
delete_option('wpcjt_nofollow');
delete_site_option('wpcjt_nofollow');
delete_option('wpcjt_size');
delete_site_option('wpcjt_size');
delete_option('wpcjt_multi');
delete_site_option('wpcjt_multi');

