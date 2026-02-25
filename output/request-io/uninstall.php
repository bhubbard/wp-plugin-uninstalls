<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apikey');
delete_site_option('apikey');
delete_option('abtest');
delete_site_option('abtest');

