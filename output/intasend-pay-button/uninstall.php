<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('INTAPYBTN_publishable_key');
delete_site_option('INTAPYBTN_publishable_key');
delete_option('INTAPYBTN_wpi_default_amount');
delete_site_option('INTAPYBTN_wpi_default_amount');
delete_option('INTAPYBTN_redirect_url');
delete_site_option('INTAPYBTN_redirect_url');
delete_option('INTAPYBTN_live_key');
delete_site_option('INTAPYBTN_live_key');

