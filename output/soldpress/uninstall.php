<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc-url');
delete_site_option('sc-url');
delete_option('sc-username');
delete_site_option('sc-username');
delete_option('sc-password');
delete_site_option('sc-password');
delete_option('sc-template');
delete_site_option('sc-template');

