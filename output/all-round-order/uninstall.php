<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbsoft_order_options');
delete_site_option('wbsoft_order_options');
delete_option('wbso_order_options');
delete_site_option('wbso_order_options');

