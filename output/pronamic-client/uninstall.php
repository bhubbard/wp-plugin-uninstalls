<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rg_gforms_enable_html5');
delete_site_option('rg_gforms_enable_html5');
delete_option('rg_gforms_currency');
delete_site_option('rg_gforms_currency');
delete_option('pronamic_client_db_version');
delete_site_option('pronamic_client_db_version');
delete_option('pronamic_client_phpmailer_sender');
delete_site_option('pronamic_client_phpmailer_sender');

