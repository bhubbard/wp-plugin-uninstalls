<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_key');
delete_site_option('site_key');
delete_option('site_type');
delete_site_option('site_type');
delete_option('site_directory');
delete_site_option('site_directory');
delete_option('emailunsub_landing_page');
delete_site_option('emailunsub_landing_page');
delete_option('share_price_toggle');
delete_site_option('share_price_toggle');
delete_option('email_landing_page');
delete_site_option('email_landing_page');

