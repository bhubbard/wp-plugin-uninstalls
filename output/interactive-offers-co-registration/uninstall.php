<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intof-publisher-id');
delete_site_option('intof-publisher-id');
delete_option('intof-site-tag');
delete_site_option('intof-site-tag');
delete_option('optional-success-url');
delete_site_option('optional-success-url');

