<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toret_stock_alert');
delete_site_option('toret_stock_alert');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

