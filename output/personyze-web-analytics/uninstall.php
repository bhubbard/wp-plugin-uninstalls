<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('personyze_account_id');
delete_site_option('personyze_account_id');
delete_option('personyze_tracking_domains');
delete_site_option('personyze_tracking_domains');
delete_option('personyze_track_add_to_cart');
delete_site_option('personyze_track_add_to_cart');
delete_option('personyze_track_purchase');
delete_site_option('personyze_track_purchase');

