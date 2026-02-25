<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wisepops_website_hash');
delete_site_option('wisepops_website_hash');
delete_option('wisepops_env');
delete_site_option('wisepops_env');

