<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dw_twitteruser');
delete_site_option('dw_twitteruser');
delete_option('dw_consumerkey');
delete_site_option('dw_consumerkey');
delete_option('dw_consumersecret');
delete_site_option('dw_consumersecret');
delete_option('dw_accesstoken');
delete_site_option('dw_accesstoken');
delete_option('dw_accesstokensecret');
delete_site_option('dw_accesstokensecret');

