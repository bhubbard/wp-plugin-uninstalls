<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('aisp_otools_add_custom_item');
delete_site_option('aisp_otools_add_custom_item');
delete_option('aisp_otools_redirect_page');
delete_site_option('aisp_otools_redirect_page');
delete_option('aisp_otools_allow_on_hold_payment');
delete_site_option('aisp_otools_allow_on_hold_payment');

