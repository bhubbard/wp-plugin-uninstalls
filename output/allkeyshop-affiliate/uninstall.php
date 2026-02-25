<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allkeyshop_widget_key');
delete_site_option('allkeyshop_widget_key');
delete_option('allkeyshop_widget_affiliate_key');
delete_site_option('allkeyshop_widget_affiliate_key');

