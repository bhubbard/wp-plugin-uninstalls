<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('partially_shipped_status');
delete_site_option('partially_shipped_status');
delete_option('partially_auto_complete');
delete_site_option('partially_auto_complete');
delete_option('partially_hide_status');
delete_site_option('partially_hide_status');
delete_option('partially_enable_status_popup');
delete_site_option('partially_enable_status_popup');

