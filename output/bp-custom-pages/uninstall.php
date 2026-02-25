<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp-custom-pages-menu-name');
delete_site_option('bp-custom-pages-menu-name');

