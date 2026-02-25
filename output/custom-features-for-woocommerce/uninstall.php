<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cffw_store_close_status');
delete_site_option('cffw_store_close_status');
delete_option('cffw_store_close_message');
delete_site_option('cffw_store_close_message');
delete_option('cffw_store_close_still_date');
delete_site_option('cffw_store_close_still_date');
delete_option('cffw_cart_auto_update');
delete_site_option('cffw_cart_auto_update');

