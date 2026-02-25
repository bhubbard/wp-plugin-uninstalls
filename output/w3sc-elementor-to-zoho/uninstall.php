<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w3scelementor_zoho_auth_infos');
delete_site_option('w3scelementor_zoho_auth_infos');
delete_option('w3scelementor_alltoken_data');
delete_site_option('w3scelementor_alltoken_data');
delete_option('w3scelementor_refresh_token_data');
delete_site_option('w3scelementor_refresh_token_data');
delete_option('w3sc_elementor_installed');
delete_site_option('w3sc_elementor_installed');
delete_option('w3sc_elementor_version');
delete_site_option('w3sc_elementor_version');

