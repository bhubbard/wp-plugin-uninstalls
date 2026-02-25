<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ehdi_api_key');
delete_site_option('ehdi_api_key');
delete_option('ehdi_selected_company_id');
delete_site_option('ehdi_selected_company_id');
delete_option('ehdi_dni_script');
delete_site_option('ehdi_dni_script');
delete_option('ehdi_wrap_script');
delete_site_option('ehdi_wrap_script');

// Delete Transients
delete_transient('ehdi_admin_notice');
delete_site_transient('ehdi_admin_notice');

