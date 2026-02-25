<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bb_minorderval_value');
delete_site_option('bb_minorderval_value');
delete_option('bb_minorderval_msg_cart');
delete_site_option('bb_minorderval_msg_cart');
delete_option('bb_minorderval_msg_checkout');
delete_site_option('bb_minorderval_msg_checkout');

