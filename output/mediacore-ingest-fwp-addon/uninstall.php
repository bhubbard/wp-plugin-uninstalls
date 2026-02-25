<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hub_url');
delete_site_option('hub_url');
delete_option('show_tags');
delete_site_option('show_tags');

