<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwpp_adv_id');
delete_site_option('cwpp_adv_id');
delete_option('cwpp_offer_id');
delete_site_option('cwpp_offer_id');

