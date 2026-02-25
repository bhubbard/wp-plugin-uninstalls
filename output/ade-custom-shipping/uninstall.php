<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ade_state_spliting');
delete_site_option('ade_state_spliting');
delete_option('ade_custom_ng');
delete_site_option('ade_custom_ng');
delete_option('ade_custom_gh');
delete_site_option('ade_custom_gh');
delete_option('ade_custom_time');
delete_site_option('ade_custom_time');
delete_option('ade_state_reference');
delete_site_option('ade_state_reference');
delete_option('ade_custom_shipping_general');
delete_site_option('ade_custom_shipping_general');

