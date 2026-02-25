<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ytsll_dashboardTitle');
delete_site_option('ytsll_dashboardTitle');
delete_option('ytsll_numberOfItems');
delete_site_option('ytsll_numberOfItems');

