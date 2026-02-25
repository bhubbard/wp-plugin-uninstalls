<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickfisco_api_token');
delete_site_option('quickfisco_api_token');
delete_option('quickfisco_codice_ateco');
delete_site_option('quickfisco_codice_ateco');
delete_option('quickfisco_plugin_disabled');
delete_site_option('quickfisco_plugin_disabled');
delete_option('quickfisco_version');
delete_site_option('quickfisco_version');
delete_option('quickfisco_activation_date');
delete_site_option('quickfisco_activation_date');

