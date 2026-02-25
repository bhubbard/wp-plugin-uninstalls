<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mas-host');
delete_site_option('mas-host');
delete_option('mas-list');
delete_site_option('mas-list');
delete_option('mas-group');
delete_site_option('mas-group');
delete_option('mas-confirm');
delete_site_option('mas-confirm');
delete_option('mas-newsletter');
delete_site_option('mas-newsletter');

