<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scpv_custom_class');
delete_site_option('scpv_custom_class');
delete_option('scpv_enable_woo');
delete_site_option('scpv_enable_woo');
delete_option('scpv_apply_all_tel');
delete_site_option('scpv_apply_all_tel');
delete_option('scpv_default_country');
delete_site_option('scpv_default_country');
delete_option('scpv_woo_default_country');
delete_site_option('scpv_woo_default_country');
delete_option('scpv_cf7_use_default_class');
delete_site_option('scpv_cf7_use_default_class');

