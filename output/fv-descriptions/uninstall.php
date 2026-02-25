<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fv_items_per_page');
delete_site_option('fv_items_per_page');
delete_option('fv_descriptions_field');
delete_site_option('fv_descriptions_field');

