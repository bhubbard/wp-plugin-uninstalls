<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('puv_customer_guid');
delete_site_option('puv_customer_guid');
delete_option('puv_mfl');
delete_site_option('puv_mfl');

