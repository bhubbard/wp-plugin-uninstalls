<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpwsnbSwipeNbuy');
delete_site_option('bpwsnbSwipeNbuy');
delete_option('bpwsnbSwipeNBuy');
delete_site_option('bpwsnbSwipeNBuy');
delete_option('bpwsnb_page_id');
delete_site_option('bpwsnb_page_id');

