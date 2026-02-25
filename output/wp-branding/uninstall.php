<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmbtb_developer');
delete_site_option('wpmbtb_developer');
delete_option('wpmbtb_developer_website');
delete_site_option('wpmbtb_developer_website');
delete_option('wpmbtb_logo');
delete_site_option('wpmbtb_logo');
delete_option('wpmbtb_customversion');
delete_site_option('wpmbtb_customversion');

