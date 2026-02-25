<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onyxflo_enable_cart_check');
delete_site_option('onyxflo_enable_cart_check');
delete_option('onyxflo_auto_hold');
delete_site_option('onyxflo_auto_hold');
delete_option('onyxflo_email');
delete_site_option('onyxflo_email');

