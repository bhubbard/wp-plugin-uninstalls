<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('factpro_fowo_client_types');
delete_site_option('factpro_fowo_client_types');
delete_option('factpro_fowo_send_email_automatically');
delete_site_option('factpro_fowo_send_email_automatically');
delete_option('factpro_fowo_client_token');
delete_site_option('factpro_fowo_client_token');
delete_option('factpro_fowo_api_version');
delete_site_option('factpro_fowo_api_version');
delete_option('factpro_fowo_base_url');
delete_site_option('factpro_fowo_base_url');
delete_option('factpro_fowo_token');
delete_site_option('factpro_fowo_token');
delete_option('factpro_fowo_testmode');
delete_site_option('factpro_fowo_testmode');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('factpro_fowo_bsiglafactura');
delete_site_option('factpro_fowo_bsiglafactura');
delete_option('factpro_fowo_bnsiglafactura');
delete_site_option('factpro_fowo_bnsiglafactura');
delete_option('factpro_fowo_siglafactura');
delete_site_option('factpro_fowo_siglafactura');
delete_option('factpro_fowo_nsiglafactura');
delete_site_option('factpro_fowo_nsiglafactura');
delete_option('factpro_fowo_install_timestamp');
delete_site_option('factpro_fowo_install_timestamp');
delete_option('factpro_fowo_version');
delete_site_option('factpro_fowo_version');

// Delete Transients
delete_transient('factpro_fowo_installing');
delete_site_transient('factpro_fowo_installing');

