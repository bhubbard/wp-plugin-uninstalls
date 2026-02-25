<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('userguiding_code');
delete_site_option('userguiding_code');
delete_option('userguiding_site');
delete_site_option('userguiding_site');
delete_option('userguiding_admin');
delete_site_option('userguiding_admin');
delete_option('userguiding_customizer');
delete_site_option('userguiding_customizer');

