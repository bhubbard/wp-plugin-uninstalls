<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eshuflw_use_css');
delete_site_option('eshuflw_use_css');
delete_option('eshuflw_shown_items');
delete_site_option('eshuflw_shown_items');

