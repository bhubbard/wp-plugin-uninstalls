<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nbp_enabled');
delete_site_option('nbp_enabled');
delete_option('nbp_needs_flush');
delete_site_option('nbp_needs_flush');
delete_option('wwhry_nbp_enabled');
delete_site_option('wwhry_nbp_enabled');
delete_option('wwhry_nbp_needs_flush');
delete_site_option('wwhry_nbp_needs_flush');

