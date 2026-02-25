<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_quictoli_items');
delete_site_option('_quictoli_items');
delete_option('_quictoli_custom_items');
delete_site_option('_quictoli_custom_items');

