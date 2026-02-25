<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynweb-options');
delete_site_option('dynweb-options');
delete_option('dynweb-meta-options');
delete_site_option('dynweb-meta-options');
delete_option('dynweb-version');
delete_site_option('dynweb-version');
delete_option('dynweb-pro');
delete_site_option('dynweb-pro');

