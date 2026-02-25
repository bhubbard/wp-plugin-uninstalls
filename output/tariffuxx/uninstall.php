<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tariffuxx_partner_id');
delete_site_option('tariffuxx_partner_id');
delete_option('tariffuxx_custom_css');
delete_site_option('tariffuxx_custom_css');
delete_option('tariffuxx_twl_version');
delete_site_option('tariffuxx_twl_version');

