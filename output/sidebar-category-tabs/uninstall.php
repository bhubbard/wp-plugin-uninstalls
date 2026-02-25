<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsct_sidebar_category_tabs_options');
delete_site_option('wsct_sidebar_category_tabs_options');

