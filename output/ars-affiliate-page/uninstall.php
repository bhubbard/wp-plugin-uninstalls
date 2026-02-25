<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ARS_ap_ars_affiliate_plugin_options');
delete_site_option('ARS_ap_ars_affiliate_plugin_options');

