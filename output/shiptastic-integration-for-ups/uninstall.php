<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shiptastic_ups_version');
delete_site_option('shiptastic_ups_version');
delete_option('woocommerce_shiptastic_ups_version');
delete_site_option('woocommerce_shiptastic_ups_version');

