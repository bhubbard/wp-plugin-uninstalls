<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sa_aacscwc_auto_apply_coupons');
delete_site_option('sa_aacscwc_auto_apply_coupons');

