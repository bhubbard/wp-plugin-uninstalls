<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ats-shorturl');
delete_site_option('ats-shorturl');
delete_option('ats-rejim');
delete_site_option('ats-rejim');
delete_option('ats-size');
delete_site_option('ats-size');
delete_option('ats-align');
delete_site_option('ats-align');

