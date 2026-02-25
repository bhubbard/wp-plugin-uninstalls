<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('almost_all_categories_w_title');
delete_site_option('almost_all_categories_w_title');
delete_option('almost_all_categories_w_categories');
delete_site_option('almost_all_categories_w_categories');

