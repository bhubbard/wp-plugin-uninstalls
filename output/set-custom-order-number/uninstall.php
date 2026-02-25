<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scon_order_number_prefix');
delete_site_option('scon_order_number_prefix');
delete_option('scon_order_number_suffix');
delete_site_option('scon_order_number_suffix');
delete_option('scon_sunarc_enabled');
delete_site_option('scon_sunarc_enabled');

